-- create indexx on the first letter of names
CREATE INDEX idx_name_first ON names(name(1));