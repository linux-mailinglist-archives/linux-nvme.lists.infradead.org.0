Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56469A2A0
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gx+Ra65jAmJXMfqR+2vyI/1B96fs1oxYm+zKwcMNFMA=; b=lvcJ2mdWnlDmk+icz8g2cgnMz/
	FqlR7BlNCXgh1nc+W6OQr1unnTAQ8ClbCVtbOSEVVuaDdFQXvoUF17dm1ABEfogpEkOXBMkUyxceo
	3z5smw3caSZ/X/oLZG65ZMEMWCzYLBuD/p4ILBY85Y08Ctrtq+yydPSedRqcQH7p2UtkqyaCZJdEY
	2E2XevnU6zeZdA2CmMRrw0Z9usbyAq6krfbAPM0LVU8sB7B6R59ZlX6D6iIBWRbksy0sJsIkHh9f1
	QBIYn6Q2N+uu77TQN7YVKms7bdPNHDlAS0VJpK8O3eoLuSN3EXg0PTwBxmukltb5vMSujCEeaVRUb
	VbwG1B6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vHY-00027B-HX; Thu, 22 Aug 2019 22:10:12 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vGz-0001hC-St; Thu, 22 Aug 2019 22:09:37 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <keith.busch@intel.com>
Subject: [PATCH 2/3] nvmf-autoconnect: fix absolute path for systemctl
Date: Thu, 22 Aug 2019 15:09:36 -0700
Message-Id: <20190822220937.8021-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822220937.8021-1-sagi@grimberg.me>
References: <20190822220937.8021-1-sagi@grimberg.me>
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
Cc: James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Without the absolute path udev gets the error:
failed to execute '/lib/udev/systemctl' 'systemctl --no-block start nvmf-connect@[...].service': No such file or directory

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
index 789a2c837e3f..c909fb036d54 100644
--- a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
+++ b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
@@ -9,9 +9,9 @@
 ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
   ENV{NVME_CTRL_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
   ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
-  RUN+="systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
+  RUN+="/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
 
 # nvme-fc transport generated events (old-style for compatibility)
 ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
   ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
-  RUN+="systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
+  RUN+="/bin/systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
