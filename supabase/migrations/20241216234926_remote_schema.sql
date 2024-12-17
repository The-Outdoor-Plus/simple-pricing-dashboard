CREATE TRIGGER create_user_trigger AFTER INSERT ON auth.users FOR EACH ROW EXECUTE FUNCTION create_user();

CREATE TRIGGER trigger_log_user_login AFTER UPDATE OF last_sign_in_at ON auth.users FOR EACH ROW WHEN ((new.last_sign_in_at IS DISTINCT FROM old.last_sign_in_at)) EXECUTE FUNCTION log_user_login();


