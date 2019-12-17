Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E8812272C
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Dec 2019 09:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3cqHKYza/6jUsEFdyEhiq6VV6GLCsY311AHAHQeDBDY=; b=YVzQT6oxOWFQOW
	fG1tO5rdZ3PptwiinzXjOjDujxxZaR46qqPJVZWgD4izTe0MMhx3faKhS3viTqwJiD4tNrDGVLnwE
	E3OyRltDcFRsdlrtd9ksltblwreOh+k5wVo5XxRrQYWEmBFyqr9FKobxfiJOmabrMnxCsilmkXicG
	YgAPB0gn/rTrLrU2stqR8YBnj5QWU1EIJvId16RhsH2IJil4BKMjXURwSml6SVAGcLXiPXYYwKe8Q
	izmZwv8FMTzfkShkNj51dZnMLm3koYAFWkA8fihwix+f6w45TFBVxGYnUwCsu0J5CWoJjhHWTjpgo
	F3D0gzuGtZUXXhYXmt/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8gM-00077i-Ql; Tue, 17 Dec 2019 08:58:18 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8gJ-00077B-11
 for linux-nvme@lists.infradead.org; Tue, 17 Dec 2019 08:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1576573095; x=1608109095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JXzOhfCmY8Z1wfV4mprMZytG1SkASRpAbwM2wsAtBgc=;
 b=lWUi3GqsU6oDuIXIMiXkGk4smIopF8ks8eCl/395Ifyfz1OKkgQICsR1
 4vNENXPi4oJC2ynN1P7LH190J4Scxx2FmTaZiouIEuf4JeVa2I7YaCQe9
 +0EvUcktGzGAwSqvD41ZjvIYNWFGsn3Fcahr0SfCmb0+PjitQ8qt8Vsx4
 oDWci+TMb2tL4m7RyFFvNEw4ksN6ox9zV5M2+Bq0aIZ67zz+MpARaHnk2
 UtY4ANeZp729BSFQm6JqVN0g5sn6BnDZE34J553lvTyolhQk4i8UNyQF6
 6EzlducD81z+m3MG1X0qUSceOvN0i0z+ka0pVNFwGW9jO4jlabajvysWt g==;
IronPort-SDR: dYTqjgnuVtR98wM6lk4GuvWIQtprZFbwJcToxSYTeb5RjFRBdBgfDT1VXRUThPIh9Ba+BrCedc
 /KUpMAr0YXy2aYkX+o1Wk2BZ9rxHpKyycR7RuGszXKtY52+FMFrNZJhkVd2zx27JrAfP9cdwS7
 bNCd350Kunkk0XIPQgfpd6JpcSmbWe+sxML/q8LGoCIi2/lCtICHlJt4469PzypJBoX4ERHAzw
 sRB6ahya+5IqSu/berSz6H5L9+1JASbwLbxJ9gB7Bkx/+mCh7R8xzfL6MFrX1i39XQDqasGG8T
 Cdc=
X-IronPort-AV: E=Sophos;i="5.69,324,1571673600"; d="scan'208";a="126299491"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 17 Dec 2019 16:58:11 +0800
IronPort-SDR: jvuBaIH0T4Om1Pplx/KgAFhk+iYB8wlaIj557dTb8fpKZfAftzgniURoe6Q247HyQhzqDFpm+r
 T34sXEGmJWj5rlIBEnpAb3kK3GFv2Zzu21KzBN8sRdnH28iKS7pHe2mpBRTgadOLP3601JmD9a
 JqA173nsvjX2flnpx17h2vFOw9GCWF1XwSQOBb6NyPQpK2y2r3oTqkd5gwpVyUNP0c5fpLPuxn
 ju013NnJ1K5Vv65La27iclVKDtq2AFzn/tzUPHKGqCefNowTlTJYbjXxydbiUS/nC0QqQQTxTq
 xxghfLkGEDcGDhU+2mH1GW2Q
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 00:52:14 -0800
IronPort-SDR: Dy9E565Nk8rSJsb1hPaqY/OZNX+KnP7GfBpPB30C7QRLupzXM/WVCtjTCjjZ7R+fvTag2kAKgp
 z2W85sqRoMOcuMUlRS5cckvo9P6gZfdcdqGqY+T7FwxjUBtfHtdXGuPK1e53lym/4Kvfg07GOM
 1Y/klJTgNLWx5u16YIeUf14aGQiQHS2uUyUx6rrSc0+J29SogB73RlGQ/z0mewMkba9hO98FXD
 msV+WQlUl0UOHEGPLjWYpANbiZAz1nsyhcQ0TkzCd7iU1zfE9ZKaV7KH6Zp8l/uPP0lF0eofpc
 /Og=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip02.wdc.com with ESMTP; 17 Dec 2019 00:58:11 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: access nr_namespaces under subsys lock
Date: Tue, 17 Dec 2019 00:58:11 -0800
Message-Id: <20191217085811.29684-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_005815_074770_B2A0EB4A 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The subsystem increments the number of namespaces which is protected by
the subsys->lock under nvmet_ns_enable(). Use a similar lock when
decrementing the same variable in nvmet_ns_disable().

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 28438b833c1b..706a7d50821a 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -611,9 +611,9 @@ void nvmet_ns_disable(struct nvmet_ns *ns)
 	wait_for_completion(&ns->disable_done);
 	percpu_ref_exit(&ns->ref);
 
+	subsys->nr_namespaces--;
 	mutex_lock(&subsys->lock);
 
-	subsys->nr_namespaces--;
 	nvmet_ns_changed(subsys, ns->nsid);
 	nvmet_ns_dev_disable(ns);
 out_unlock:
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
