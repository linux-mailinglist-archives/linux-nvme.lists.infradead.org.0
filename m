Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB461339D
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 20:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Yo/70c0VIuFXdgR5PwhLAsLodfIOYubxXoDO2/Sy/hQ=; b=BAK
	2Ydm3v5YpT2HDd1N6r/Rf2XGr/PnKWoeQVwCozdkmpFz9d21RwujBbL8b7LHGQXFU+GZllHsN9yPs
	hT/xZos/Fuz7Uu/v3SKRn8iwLATaUsxdddsR0R2P/XCxmCqUYT6dYN5vsbmP04kELfTvvgnDJXMsE
	HMJkmB0E21jFmsO+az1U2wKWiQlyEW4aT/F2uk1VJP+6PRZTXFzeeODz49probxaBAb7OWL/6nl8L
	i6oYOGrw0iIhzVTD6HxXyA2usdmrzy51d7eAaTEtMsIOeW4A+TxTIOAwFR5VDh5QnI5kdwjR6mVBx
	TUXXAPpQ+I+rQyT9kUa6p4JH1bhrtFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcxJ-0005V1-UA; Fri, 03 May 2019 18:30:45 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcxE-0005Ud-Qk
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 18:30:42 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 11:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="141040119"
Received: from unknown (HELO vmd-mono-rhel6p7.lm.intel.com) ([10.232.116.108])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 11:30:39 -0700
From: Jon Derrick <jonathan.derrick@intel.com>
To: Omar Sondoval <osandov@osandov.com>
Subject: [PATCH] blktests: Use old variable check for Bash <4.2
Date: Fri,  3 May 2019 12:28:28 -0600
Message-Id: <1556908108-16475-1-git-send-email-jonathan.derrick@intel.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_113040_918701_E8A5C207 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jon Derrick <jonathan.derrick@intel.com>, linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Bash 4.2 and above supports -v variable checks, which returns true for
set or null. Instead use an older bashism that is compatible with bash
4.1 and earlier but only returns true if the variable is set non-null.
This inherently adds a sanity check in case of null variables.

Signed-off-by: Jon Derrick <jonathan.derrick@intel.com>
---
 check         |   20 ++++++++++----------
 common/cgroup |    2 +-
 common/fio    |    2 +-
 common/rc     |    2 +-
 tests/meta/rc |    4 ++--
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/check b/check
index a623892..add8f7e 100755
--- a/check
+++ b/check
@@ -196,7 +196,7 @@ _output_status() {
 
 	if (( RUN_FOR_ZONED )); then zoned=" (zoned) "; fi
 
-	if [[ -v DESCRIPTION ]]; then
+	if [[ "${DESCRIPTION:-}" ]]; then
 		printf '%-60s' "${test}${zoned}($DESCRIPTION)"
 	else
 		printf '%-60s' "${test}${zoned}"
@@ -233,7 +233,7 @@ _output_notrun() {
 }
 
 _output_last_test_run() {
-	if [[ -v TEST_DEV ]]; then
+	if [[ "${TEST_DEV:-}" ]]; then
 		_output_status "$TEST_NAME => $(basename "$TEST_DEV")" ""
 	else
 		_output_status "$TEST_NAME" ""
@@ -258,7 +258,7 @@ _output_test_run() {
 		tput cuu $((${#LAST_TEST_RUN[@]} - 3))
 	fi
 
-	if [[ -v TEST_DEV ]]; then
+	if [[ "${TEST_DEV:-}" ]]; then
 		_output_status "$TEST_NAME => $(basename "$TEST_DEV")" "${TEST_RUN["status"]}ed"
 	else
 		_output_status "$TEST_NAME" "${TEST_RUN["status"]}ed"
@@ -288,7 +288,7 @@ _output_test_run() {
 }
 
 _cleanup() {
-	if [[ -v TMPDIR ]]; then
+	if [[ "${TMPDIR:-}" ]]; then
 		rm -rf "$TMPDIR"
 		unset TMPDIR
 	fi
@@ -300,7 +300,7 @@ _cleanup() {
 		unset TEST_DEV_QUEUE_SAVED["$key"]
 	done
 
-	if [[ -v RESTORE_CPUS_ONLINE ]]; then
+	if [[ "${RESTORE_CPUS_ONLINE:-}" ]]; then
 		local cpu
 		for cpu in "${!CPUS_ONLINE_SAVED[@]}"; do
 			echo "${CPUS_ONLINE_SAVED["$cpu"]}" >"/sys/devices/system/cpu/cpu$cpu/online"
@@ -659,18 +659,18 @@ fi
 : "${QUICK_RUN:=0}"
 : "${RUN_ZONED_TESTS:=0}"
 : "${OUTPUT:=results}"
-if [[ -v EXCLUDE ]] && ! declare -p EXCLUDE | grep -q '^declare -a'; then
+if [[ "${EXCLUDE:-}" ]] && ! declare -p EXCLUDE | grep -q '^declare -a'; then
 	# If EXCLUDE was not defined as an array, convert it to one.
 	# shellcheck disable=SC2190,SC2206
 	EXCLUDE=($EXCLUDE)
-elif [[ ! -v EXCLUDE ]]; then
+elif [[ ! "${EXCLUDE:-}" ]]; then
 	EXCLUDE=()
 fi
-if [[ -v TEST_DEVS ]] && ! declare -p TEST_DEVS | grep -q '^declare -a'; then
+if [[ "${TEST_DEVS:-}" ]] && ! declare -p TEST_DEVS | grep -q '^declare -a'; then
 	# If TEST_DEVS was not defined as an array, convert it to one.
 	# shellcheck disable=SC2206
 	TEST_DEVS=($TEST_DEVS)
-elif [[ ! -v TEST_DEVS ]]; then
+elif [[ ! "${TEST_DEVS:-}" ]]; then
 	TEST_DEVS=()
 fi
 
@@ -709,7 +709,7 @@ while true; do
 	esac
 done
 
-if [[ $QUICK_RUN -ne 0 && ! -v TIMEOUT ]]; then
+if [[ $QUICK_RUN -ne 0 && ! "${TIMEOUT:-}" ]]; then
 	_error "QUICK_RUN specified without TIMEOUT"
 fi
 
diff --git a/common/cgroup b/common/cgroup
index 554ebf7..c34bffd 100644
--- a/common/cgroup
+++ b/common/cgroup
@@ -22,7 +22,7 @@ _init_cgroup2()
 
 _exit_cgroup2()
 {
-	if [[ -v CGROUP2_DIR ]]; then
+	if [[ "${CGROUP2_DIR:-}" ]]; then
 		find "$CGROUP2_DIR" -type d -delete
 		unset CGROUP2_DIR
 	fi
diff --git a/common/fio b/common/fio
index 2b4f6e2..2e81b26 100644
--- a/common/fio
+++ b/common/fio
@@ -161,7 +161,7 @@ _fio_perf() {
 _run_fio() {
 	local args=("--output=$TMPDIR/fio_perf" "--output-format=terse" "--terse-version=4" "--group_reporting=1")
 
-	if [[ -v TIMEOUT ]]; then
+	if [[ "${TIMEOUT:-}" ]]; then
 		args+=("--runtime=$TIMEOUT")
 	fi
 
diff --git a/common/rc b/common/rc
index 71e27c3..5dd2c95 100644
--- a/common/rc
+++ b/common/rc
@@ -15,7 +15,7 @@ shopt -s extglob
 # for TIMEOUT / number of subtests.
 _divide_timeout() {
 	local num_tests="$1"
-	if [[ -v TIMEOUT ]]; then
+	if [[ "${TIMEOUT:-}" ]]; then
 		((TIMEOUT = (TIMEOUT + num_tests - 1) / num_tests))
 	fi
 }
diff --git a/tests/meta/rc b/tests/meta/rc
index da584d6..093edd1 100644
--- a/tests/meta/rc
+++ b/tests/meta/rc
@@ -7,7 +7,7 @@
 . common/rc
 
 group_requires() {
-	if [[ -v META_REQUIRES_SKIP ]]; then
+	if [[ "${META_REQUIRES_SKIP:-}" ]]; then
 		SKIP_REASON="META_REQUIRES_SKIP was set"
 		return 1
 	fi
@@ -15,7 +15,7 @@ group_requires() {
 }
 
 group_device_requires() {
-	if [[ -v META_DEVICE_REQUIRES_SKIP ]]; then
+	if [[ "${META_DEVICE_REQUIRES_SKIP:-}" ]]; then
 		SKIP_REASON="META_DEVICE_REQUIRES_SKIP was set"
 		return 1
 	fi
-- 
1.7.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
