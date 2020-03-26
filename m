Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58C3194612
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 19:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRzJsmUwydjh9cPyyRYjxXHI61K5o3kX0jKYa0WT+zk=; b=Do9ONuI2kZJnIm
	8AKKoyVmitw4eUFm+/TpOc7ed76nSOucHF0KTfe0//Twkp2GT8ORVqiH4+BWKNvGAJQa/ytT6dUZ2
	J+JKc/KWvNp2J/jMk2NNC7/fY/JkSif1IBftgOTwHjYNy4WBeWudXsh3hLpuRRwuT0mvRxupZ746Q
	r6LdXfyq/9M06PZVuDHBTyL5bM1aPgDIQa4KP8IpVZ+vVY0biYnTPbrP4n1wE1865FvnCyYSTmEYk
	GdGQArrBKxfFTlLRMK9+0pnswEDXy84ZQiSsBhbpwIQF4w4frm8pXywqhJwbLyQeqpvlXi5k9tgFf
	0np4uHgM+wBjDLd+i7SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWw2-0007EW-KU; Thu, 26 Mar 2020 18:08:54 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvC-0006ex-RD
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 18:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585246081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hUvaWVC8+eFALOuBc2LtNxAW379jiFmbtUUBuWEH0uw=;
 b=Olr4jlhbyHHSj60MyLLq6fE4NGZpNrgxxFIDzsZnZLoiT0XTA0JJmkUzwCWtVfA31mnEvI
 4fn25tPnB/u6wR9MLxcvEE3mBI6pOcVZFvAuh8wUtRwJZvJP+2C0AlxA7uIvNK+9MSjiYv
 ZatOmJNAR1IgY50RPlkjLXbQfE0gMQo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-dRcglYa3Ocecw6peWyeErA-1; Thu, 26 Mar 2020 14:07:59 -0400
X-MC-Unique: dRcglYa3Ocecw6peWyeErA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48F378017CC
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:53 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D467019C69
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:52 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/7] README: Update URL for configshell-fb
Date: Thu, 26 Mar 2020 13:07:44 -0500
Message-Id: <20200326180750.469346-2-tasleson@redhat.com>
In-Reply-To: <20200326180750.469346-1-tasleson@redhat.com>
References: <20200326180750.469346-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110802_957291_4EACDE6E 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The github repository was moved. There is a github redirect,
so this change is not strictly required.

Signed-off-by: Tony Asleson <tasleson@redhat.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index c8717e8..5a4ecd1 100644
--- a/README
+++ b/README
@@ -7,7 +7,7 @@ to save, restore or clear the current NVMe target configuration.
 Installation
 ------------
 Please install the configshell-fb package from
-https://github.com/agrover/configshell-fb first.
+https://github.com/open-iscsi/configshell-fb first.
 
 nvmetcli can be run directly from the source directory or installed
 using setup.py.
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
