Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F398E60BBC
	for <lists+linux-nvme@lfdr.de>; Fri,  5 Jul 2019 21:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gixs7tHw5MKMoMRfXYhn88GSRBiEM1UuUh3q8CxguGE=; b=RU8rkhTZaZ7xpo
	BwTYN9McfvmpzXKodUs7ykA8QqpmA8+MA4zzLx/0cfCTQE/DjKTZo5lPFkH3ycJlpBWErACrFZCjR
	nO/1vL6SusOK1HwDgk/oXkNo6QVvnS8sxgR5y3VY0hQUZa74X5ZV5+t4TgoMCv+IJgHvAIAtD6yxh
	UR5q7hJ1aRmj8wdbedtbqfqtYVMUX5fWsBRjD5FyObB0RdADrwvx0zt5vp028rMWEmW8qoP7yvdtc
	0cqQ6AqDIWadBx/3+Bm/gOxruvEpZkVs780KYKJibbm317/OIiLsgbr/bT8CmM0Dyg8gX4lcrYzVY
	UQA92MS7mVKEWXadWDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjTgf-0003eZ-R8; Fri, 05 Jul 2019 19:16:02 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjTgX-0003e7-Gx
 for linux-nvme@lists.infradead.org; Fri, 05 Jul 2019 19:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562354134;
 bh=pbYTbmFg5+9MUs+Xq9U8VQNqI7dxSqfuIjlnzkc6lpQ=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=M1+6PiKyqNM+06i8ByDyR1wS5u+goSGY9+reKMncZcmMfUlzWnlIsSQVjuCbXYrUx
 lJa/uAFINkduHgHvpzx9Q0I1SIjDpbmjsZTfx9R0HJz8dBIMt1PvZJgAz5Fjyx1jr7
 csXhDywM14iXqpJk+ozwzBwB63wJ2HLuWXpWI+Kc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.45.164]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MhlP1-1hvwFp0Zmd-00Mt90; Fri, 05
 Jul 2019 21:15:34 +0200
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] nvme: One function call less in nvme_update_disk_info()
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <38f864df-9c90-31a3-d78d-7aaf2d726e4f@web.de>
Date: Fri, 5 Jul 2019 21:15:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:ANMk+Cgq9cYCEBwg4q5PhHWWyXZJCCasPJFZ1XSjkkJr2srE/mm
 wevMJjKH3eLpC2CkN0QIIhYmG7ZdupzQDTY3jtOSE58TJN43o0CABqoN/FDnYrj8/eEfJWJ
 xEv6qVRR8nVaznopsr78h/G3L71xX6pyNWxCRF5TopTVOeNpX/vwDTdWAh4ibo4ZymZxD+F
 S99ZbsGgvYv0v5iBFHTxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6LQdEfRKV9A=:690brpmga8cWk+XLBPnrnE
 OQzlKSaBMkuM4sBSQjnoqRAKBnilpm8rJV6p+4p6/otMmews6Zq+UJwv1EkT9WRa6J8HGOxYY
 p6boq5AOWUMhNNKVREahvFXHi8taInH/D6d5njfv5eD6dFKr4HTHT7XIrRznyc+PfXagMj3tz
 XbQuxDowN177JpSUISVvgu+jcGJObw5kmnL1BlaoA3GeQpijzk+kALajnsCcaKwsCal6JoTnO
 xGbOdL3THgxT9BuqzV+Tllx9ByhBsH7dtVsmSt5q6avbEkiFDZKVPUwdbhheNvCCfF0GNiLAM
 +zm9ec/YDY91pFBQk8SC1fPGMUdiC/jg1oABigj+veHwgCQTo7yq/UpQBsH8HYrOirSDcpC+c
 roGFngIN2dSflvVgXK26f0Dtj3+YESD1nYSHU4wpccjTvnhrtp4U5nWBjEoMjkQCBFX19VrAr
 QUW426/Fs9QBUNvH2B6Ced7UVkqj6uw3OmjqKkVS60OAU6LN0emzdKgq6HsfOpO0qQ8BZTNJT
 2OmZD/8IOYh47XAy2UoOIHU+pDqUriXq99nxPs7LbzGz0Crn16X3oGsf+fmPXgUfkpD1gQMAJ
 BrznoLiAdTUQUH8Hc0ueVailrmLL8RoJKaQd1/ntFdbKFTe4IEr5Tm0N30rBB/OCfdOA5J69k
 E1Hc9CNrf9kIbQd/zAKQGRNObiXk3mOMZ0ZSfEVI/rtIwgO7Qq6G2dbzGXfe5+vj4Mo8rD21k
 W7fh2aI8YjVJxedY3a0vCN9R8sFuYkNWZdAIurov8UJ4+j3roKhE5l5oH/lGoBSbOc/SiSCyf
 sP5jawQSbYiYPzN3C6UwrmEgIPxeubc0j2ix17b9mpu5PNXgp+X6+526nKuLJfQ+Zv+IqjJCS
 PcwTcCh5W+ovIlm/5oClalFzsTV6J9465mdYwtzfKjVAPS9/3DvxHyQ2QDJ+fCySwpYn9rNdc
 9DdVlQqtcvEU2/w6dNGVA36IsyOJFwloxaRrWyAFMHwWFuZxGF0kdnqtoDXRfz4d6HRei2chN
 6tzoGpVeN4pSkRY0DrO5LEoazKEkJnrB3OydpBBw60Zda+ACJ6E2QAnCiPECAScfGP0ayw9St
 u3zAoi52J/O0yMMIoCbW94iI89gxK5WapRk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_121553_864777_BB361837 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Fri, 5 Jul 2019 21:08:12 +0200

Avoid an extra function call by using a ternary operator instead of
a conditional statement.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/nvme/host/core.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index b2dd4e391f5c..73888195bdb2 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1650,10 +1650,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	nvme_config_discard(disk, ns);
 	nvme_config_write_zeroes(disk, ns);

-	if (id->nsattr & (1 << 0))
-		set_disk_ro(disk, true);
-	else
-		set_disk_ro(disk, false);
+	set_disk_ro(disk, id->nsattr & (1 << 0) ? true : false);

 	blk_mq_unfreeze_queue(disk->queue);
 }
--
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
