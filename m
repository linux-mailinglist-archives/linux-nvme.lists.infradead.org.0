Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884D11C0EFA
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 09:45:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+WAWnIx2ufxNuy0mk9Sr4luVIB83F2bQ27Hk7cQoP/M=; b=I/xAbnr3HzCy+y
	gvbk5NwirW9dyZtTkbATzYKJ/CMjF6HWvm07lDWmkuXyYwk7FlErcu1xTjspnstq7A1mpg/36mkFl
	v+E8wr2vjAPeSI7YrrND2VcTfYyLdgTkQfVI5YBkzmRtlUqLL3U00Sh23d2mWtLP+chW0Io9i6GjO
	1Z1xJd3BI9GLkfIjq0A2exKJsop2YmNojBRw4w+o4eqbGP68IpvPeFltT56JVuf3qavfdEfOSH/5U
	ml9ghXcCkPVZaFyQ8WPzKtiPk2wUFl+ilVRcvMQQWJ2/e2JnmDv+iCLZLq6qlwDlPDQZc6yujnK0/
	L+BFvwgITssNbXpxU/Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQMC-0000Oh-9s; Fri, 01 May 2020 07:45:12 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQM3-0008IH-RE
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 07:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588319101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NBbBl5llpaRKnIcOdAQyJtPwPArz7Zcumz7YPN0wgxg=;
 b=AnqtEJk/hpuXdHxZldmacH/KjoiH7EFuR0pQ8ulruk6VMaIFZYWuADjBKSmR1OQbdYZhYu
 GvlFvEjVEVfs+WM2lPnKYE9ZOTw2elZtOO1y4BOjUGBUl+Jcq556Y1T3EbQQ8YbK9aGLHw
 UMVWuQRK+Hr/UmwLntBwDQNimfBMEYA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-3_FotYgMMniZOkQfYH4TyA-1; Fri, 01 May 2020 03:43:02 -0400
X-MC-Unique: 3_FotYgMMniZOkQfYH4TyA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E54531005510;
 Fri,  1 May 2020 07:43:01 +0000 (UTC)
Received: from dhcp-12-105.nay.redhat.com (dhcp-12-105.nay.redhat.com
 [10.66.12.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9AF055EDF1;
 Fri,  1 May 2020 07:43:00 +0000 (UTC)
From: Yi Zhang <yi.zhang@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli] nvme-print: nvme list -o json fix
Date: Fri,  1 May 2020 15:42:10 +0800
Message-Id: <20200501074210.6381-1-yi.zhang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_004503_970288_283D3D44 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kbusch@kernel.org, Justin Tee <justin.tee@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Bellow error log will be triggered on non pcie transport, so only print the
ProductName for pcie transport, also add print "\n" and json_free_object fix

Failed to open /sys/class/nvme/nvme1/device/subsystem_vendor with errno No such file or directory
Failed to open /sys/class/nvme/nvme1/device/subsystem_device with errno No such file or directory
Failed to open /sys/class/nvme/nvme1/device/vendor with errno No such file or directory
Failed to open /sys/class/nvme/nvme1/device/device with errno No such file or directory
Failed to open /sys/class/nvme/nvme1/device/class with errno No such file or directory
{
  "Devices" : [
    {
      "NameSpace" : 1,
      "DevicePath" : "/dev/nvme1n1",
      "Firmware" : "4.18.0-1",
      "Index" : 1,
      "ModelNumber" : "Linux",
      "ProductName" : "NULL",
      "SerialNumber" : "eb4695bf0da275a3",
      "UsedBytes" : 268435456000,
      "MaximumLBA" : 524288000,
      "PhysicalSize" : 268435456000,
      "SectorSize" : 512
    }
  ]
}

Reported-by: Justin Tee  <justin.tee@broadcom.com>
Signed-off-by: Yi Zhang <yi.zhang@redhat.com>
---
 nvme-print.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/nvme-print.c b/nvme-print.c
index 42e27a3..7414280 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -4629,7 +4629,7 @@ static void json_simple_ns(struct nvme_namespace *n, struct json_array *devices)
 
 	json_object_add_value_string(device_attrs, "ModelNumber", formatter);
 
-	if (index >= 0) {
+	if (index >= 0 && !strcmp(n->ctrl->transport, "pcie")) {
 		char *product = nvme_product_name(index);
 
 		json_object_add_value_string(device_attrs, "ProductName", product);
@@ -4682,6 +4682,8 @@ static void json_simple_list(struct nvme_topology *t)
 	}
 	json_object_add_value_array(root, "Devices", devices);
 	json_print_object(root, NULL);
+	printf("\n");
+	json_free_object(root);
 }
 
 static void json_print_list_items(struct nvme_topology *t,
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
