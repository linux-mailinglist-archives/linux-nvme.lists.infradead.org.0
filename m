Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B72194619
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 19:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRmAMPl+C+MVV3Kb4TI9vGruqsDExKicaB1iTKh4Vl8=; b=EGMLAWtsPQemOt
	1SOcPw5CqPq8qY6rrd9w40CAGleyAp/0iLPhUoXAdYydGxtYJJKiPrWj1hczNdMHJel7QhNsc0dmM
	xLZi3eTbi70KTS+YqnnP0COfeSUO6jQ/Xxd/OHQ/9/cFZI18GDUMjwtAmmsdO5BlRApLB8WGzfyC9
	scGJ7ifPGHKt8KaLT7pO5c9ryxZr0+QeteXz9wPytHFVIhGrCzZAECb2z+50HmlfYivj5APum+9Fa
	c27x3OsAewwcI3pUZsOTI6zvild5z3CA49tM7giexFCObpxQYM0LBetUfW1eAzgLNyJfuJCNVTwAF
	XOfEuuKFqI6BcmN3C5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWwf-0007hy-4W; Thu, 26 Mar 2020 18:09:33 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvD-0006eu-GY
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 18:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585246080;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GHTFdewOSa6ExpsiH20++OYTIzKUgfFmPBm33jtmMiM=;
 b=Joixl+AeQaY6xApWaC352699dem1Vy8gphavW6Ehtc1yVug1RuE9I7Vo8LzOIBAEnoFwG9
 U3UPidMjSIXRxVEBBA/VKHG64IYJrOjJbp+BY6l4lkTojPuwVatkBjhCusvltQhaFEJYYo
 grdRzXKP4t9Da3BxijUeNJUbLNN3674=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-Q-zLQv_BNKW7VA6H1oncVQ-1; Thu, 26 Mar 2020 14:07:58 -0400
X-MC-Unique: Q-zLQv_BNKW7VA6H1oncVQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1096800D4E
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:54 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7EB9B19C69
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:54 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 3/7] nvme.py: Explicit close is redundant
Date: Thu, 26 Mar 2020 13:07:46 -0500
Message-Id: <20200326180750.469346-4-tasleson@redhat.com>
In-Reply-To: <20200326180750.469346-1-tasleson@redhat.com>
References: <20200326180750.469346-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110803_641179_45DE16DC 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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

One of the benefits of using 'with' statement for open files is the
close is going to be called regardless of what happens.

Signed-off-by: Tony Asleson <tasleson@redhat.com>
---
 nvmet/nvme.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/nvmet/nvme.py b/nvmet/nvme.py
index 0647ddc..55c3930 100644
--- a/nvmet/nvme.py
+++ b/nvmet/nvme.py
@@ -302,7 +302,6 @@ class Root(CFSNode):
             f.write("\n")
             f.flush()
             os.fsync(f.fileno())
-            f.close()
 
         os.rename(savefile + ".temp", savefile)
 
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
