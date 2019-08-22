Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1AC9A2A2
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oft3ALZVFYulIUMVAIUwkS0Ar4UuAz9R6k5wJn8Pvdc=; b=Me4BYZcJWNq2IyvLu5zCrDsTX9
	bW22JvszcGMpJ4++yFcjZYxMuifMFAzDc/V/d9vZ5XhL1L+NK7Ed1Hb1NlPatWMhs/kN9F6HDVJJN
	RwalwI2GcG7T0FsbABAuSzHUzvgrEZRsJ3BqHYJBbX/5RsF9ZHztwb14DsbzbXLLP9Vxr7/tO/x+7
	3J1L5HX0sN/NVrHSwvl+khB/x+bMd4wWAAiyariXY6KE+yFRYWowy9YVi1io6DE4y+8I1afPJ/Us6
	AedkcR4baZivWpQLZ4stY5+G2R6JSCRCBs5ti5B99bSiAPWXr8HEBqfzBLKUSGvmoRr75gYw5TNWp
	qPXzcSPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vHs-0003hG-Q8; Thu, 22 Aug 2019 22:10:32 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vH0-0001hC-3N; Thu, 22 Aug 2019 22:09:38 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <keith.busch@intel.com>
Subject: [PATCH 3/3] systemd: fix echo call with absolute path
Date: Thu, 22 Aug 2019 15:09:37 -0700
Message-Id: <20190822220937.8021-3-sagi@grimberg.me>
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

Without placing the absolute path when formatting the
nvme connect-all args we can get the following error:
--
connect-all: unrecognized option '-e'
Discover NVMeoF subsystems and connect to them  [  --transport=<LIST>, -t <LIST> ]    --- transport type
  [  --traddr=<LIST>, -a <LIST> ]       --- transport address
  [  --trsvcid=<LIST>, -s <LIST> ]      --- transport service id (e.g. IP
                                            port)
  [  --host-traddr=<LIST>, -w <LIST> ]  --- host traddr (e.g. FC WWN's)
  [  --hostnqn=<LIST>, -q <LIST> ]      --- user-defined hostnqn (if default
                                            not used)
  [  --hostid=<LIST>, -I <LIST> ]       --- user-defined hostid (if default
                                            not used)
  [  --raw=<LIST>, -r <LIST> ]          --- raw output file
  [  --device=<LIST>, -d <LIST> ]       --- use existing discovery controller
                                            device
  [  --keep-alive-tmo=<LIST>, -k <LIST> ] --- keep alive timeout period in
                                            seconds
  [  --reconnect-delay=<LIST>, -c <LIST> ] --- reconnect timeout period in
                                            seconds
  [  --ctrl-loss-tmo=<LIST>, -l <LIST> ] --- controller loss timeout period in
                                            seconds
  [  --hdr_digest, -g ]                 --- enable transport protocol header
                                            digest (TCP transport)
  [  --data_digest, -G ]                --- enable transport protocol data
                                            digest (TCP transport)
  [  --nr-io-queues=<LIST>, -i <LIST> ] --- number of io queues to use
                                            (default is core count)
  [  --nr-write-queues=<LIST>, -W <LIST> ] --- number of write queues to use
                                            (default 0)
  [  --nr-poll-queues=<LIST>, -P <LIST> ] --- number of poll queues to use
                                            (default 0)
  [  --queue-size=<LIST>, -Q <LIST> ]   --- number of io queue elements to
                                            use (default 128)
  [  --persistent, -p ]                 --- persistent discovery connection
  [  --quiet, -Q ]                      --- suppress already connected errors
Usage: nvme connect-all <device> [OPTIONS]
Options:
: nvmf-connect@--device\x3dnvme0\t--transport\x3dtcp\t--traddr\x3d192.168.123.1\t--trsvcid\x3d8009\t--host-traddr\x3dnone.service: Main process exited, code=exited, status=70/n/a
: nvmf-connect@--device\x3dnvme0\t--transport\x3dtcp\t--traddr\x3d192.168.123.1\t--trsvcid\x3d8009\t--host-traddr\x3dnone.service: Failed with result 'exit-code'.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 nvmf-autoconnect/systemd/nvmf-connect@.service | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvmf-autoconnect/systemd/nvmf-connect@.service b/nvmf-autoconnect/systemd/nvmf-connect@.service
index 25dca0efefd9..10fb3aafcf59 100644
--- a/nvmf-autoconnect/systemd/nvmf-connect@.service
+++ b/nvmf-autoconnect/systemd/nvmf-connect@.service
@@ -11,4 +11,4 @@ Requires=nvmf-connect.target
 [Service]
 Type=simple
 Environment="CONNECT_ARGS=%i"
-ExecStart=/bin/sh -c "nvme connect-all --quiet `echo -e $CONNECT_ARGS`"
+ExecStart=/bin/sh -c "nvme connect-all --quiet `/bin/echo -e $CONNECT_ARGS`"
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
