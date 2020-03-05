Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4417A4A4
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 12:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BIQAGrHIaFFkF8ZuVaTt+f/zkTf+e0fAznaJzOQcG8c=; b=D81uP9bsTIEUq21cGeO0yuYOV+
	UpVytkvJqJv+VDFPyWSiLkw6mjnjAg3D8eHzLGv7oMT+1Ot9HPckHcLVFWq2J00I/IYZMPJnY4Is8
	Xgrg/kTrBtAyeAODexst95FWv5x8ovZgO3HgA+99I6G76EQ8k3QADjhy3sGyJ3WELdqzTkVSv8SAy
	P/Zwx0PpYKF4Pekbszy+TuTgGCXU86q40InqVz9BBVZ7frd7OUMZXVZCtA1XyAgfRRfFNV2PeID7Z
	EWzbFUnufwdFgixj/EZ31JuAY3XT9rvyNFfyt4rrEs9rSrlKjftE/pQurhsvY2qyrPxRGzNm2Uz0M
	S0SKV59A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9p4M-0005YD-Gn; Thu, 05 Mar 2020 11:53:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9p3p-0005FZ-3b
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 11:53:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 50CCFAFA0;
 Thu,  5 Mar 2020 11:52:59 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Omar Sandoval <osandov@osandov.com>
Subject: [PATCH 1/3] nvme: enable ANA support
Date: Thu,  5 Mar 2020 12:52:37 +0100
Message-Id: <20200305115239.29794-2-hare@suse.de>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200305115239.29794-1-hare@suse.de>
References: <20200305115239.29794-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_035305_464276_4FC0C469 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Hannes Reinecke <hare@suse.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add ANA support functions and update _create_nvmet_ns() to
accept an additional ANA grpid parameter.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme/rc | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 69 insertions(+), 3 deletions(-)

diff --git a/tests/nvme/rc b/tests/nvme/rc
index 40f0413..72e33c1 100644
--- a/tests/nvme/rc
+++ b/tests/nvme/rc
@@ -14,7 +14,7 @@ group_device_requires() {
 	_test_dev_is_nvme
 }
 
-NVMET_CFS="/sys/kernel/config/nvmet/"
+NVMET_CFS="/sys/kernel/config/nvmet"
 
 _test_dev_is_nvme() {
 	if ! readlink -f "$TEST_DEV_SYSFS/device" | grep -q nvme; then
@@ -90,6 +90,7 @@ _create_nvmet_port() {
 
 	mkdir "${NVMET_CFS}/ports/${port}"
 	echo "${trtype}" > "${NVMET_CFS}/ports/${port}/addr_trtype"
+	echo "${port}" > "${NVMET_CFS}/ports/${port}/addr_traddr"
 
 	echo "${port}"
 }
@@ -99,6 +100,62 @@ _remove_nvmet_port() {
 	rmdir "${NVMET_CFS}/ports/${port}"
 }
 
+_create_nvmet_anagroup() {
+	local port="$1"
+	local port_cfs="${NVMET_CFS}/ports/${port}"
+	local grpid
+
+	for ((grpid = 1; ; grpid++)); do
+		if [[ ! -e "${port_cfs}/ana_groups/${grpid}" ]]; then
+			break
+		fi
+	done
+
+	mkdir "${port_cfs}/ana_groups/${grpid}"
+
+	echo "${grpid}"
+}
+
+_remove_nvmet_anagroup() {
+	local port="$1"
+	local grpid="$2"
+	local ana_cfs="${NVMET_CFS}/ports/${port}/ana_groups/${grpid}"
+
+	rmdir "${ana_cfs}"
+}
+
+_set_nvmet_anagroup_state() {
+	local port="$1"
+	local grpid="$2"
+	local state="$3"
+	local ana_cfs="${NVMET_CFS}/ports/${port}/ana_groups/${grpid}"
+
+	echo "${state}" > "${ana_cfs}/ana_state"
+}
+
+_display_ana_state() {
+	local nvmet_subsystem="$1"
+	local grpid state cntlid
+
+	for nvme in /sys/class/nvme/* ; do
+		[ -f ${nvme}/subsysnqn ] || continue
+		subsys="$(cat "${nvme}/subsysnqn")"
+		if [ "${subsys}" != "${nvmet_subsystem}" ] ; then
+			continue
+		fi
+		cntlid="$(cat "${nvme}/cntlid")"
+		for c in ${nvme}/nvme* ; do
+			if [ ! -d ${c} ] ; then
+				echo "${cntlid}: ANA disabled"
+				continue
+			fi
+			grpid="$(cat "${c}/ana_grpid")"
+			state="$(cat "${c}/ana_state")"
+			echo "${cntlid}: grpid ${grpid} state ${state}"
+		done
+	done
+}
+
 _create_nvmet_ns() {
 	local nvmet_subsystem="$1"
 	local nsid="$2"
@@ -106,14 +163,22 @@ _create_nvmet_ns() {
 	local uuid="00000000-0000-0000-0000-000000000000"
 	local subsys_path="${NVMET_CFS}/subsystems/${nvmet_subsystem}"
 	local ns_path="${subsys_path}/namespaces/${nsid}"
+	local ana_grpid
 
-	if [[ $# -eq 4 ]]; then
+	if [[ $# -ge 4 ]]; then
 		uuid="$4"
 	fi
 
+	if [[ $# -eq 5 ]]; then
+		ana_grpid="$5"
+	fi
+
 	mkdir "${ns_path}"
 	printf "%s" "${blkdev}" > "${ns_path}/device_path"
 	printf "%s" "${uuid}" > "${ns_path}/device_uuid"
+	if [ -n "${ana_grpid}" ] ; then
+		printf "%s" "${ana_grpid}" > "${ns_path}/ana_grpid"
+	fi
 	printf 1 > "${ns_path}/enable"
 }
 
@@ -121,11 +186,12 @@ _create_nvmet_subsystem() {
 	local nvmet_subsystem="$1"
 	local blkdev="$2"
 	local uuid=$3
+	local ana_grpid=$4
 	local cfs_path="${NVMET_CFS}/subsystems/${nvmet_subsystem}"
 
 	mkdir -p "${cfs_path}"
 	echo 1 > "${cfs_path}/attr_allow_any_host"
-	_create_nvmet_ns "${nvmet_subsystem}" "1" "${blkdev}" "${uuid}"
+	_create_nvmet_ns "${nvmet_subsystem}" "1" "${blkdev}" "${uuid}" "${ana_grpid}"
 }
 
 _remove_nvmet_ns() {
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
