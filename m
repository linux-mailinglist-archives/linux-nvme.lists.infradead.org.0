Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F46ABF18
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hCLQxViu/vIggPxLk+NdFdx2C0gEnL1E4RuHZ78eyLk=; b=RGSsAxBlKMtyqn
	t5t5a+yRCiw/KXge2r0kka+foj0S/ACVqNsvhvx3Xo98uUuvlmU8vdTXagbEq8v2FSmehRZ7o7nD9
	VTfkNwJXO9ZXr6iOB9xh2TMajBPuAI00Yl5pUObX0IyDRR1sB0mrGf388UB9E7l0/KMJVS3EarGUO
	O4YU6YLEeLACokjL9tBH5+V7ptdFO+Khu/LH+bYSsg+GLK/Bw7OssegkxEmDGX0euicgVCBvmozaT
	p5DzFtytKplGw8/FfayXfDGduo6gKhDlbjbOUfBN4aK3VEP5giFZNhahYpXGUGSPm1IMRTHv+2fwW
	YCAI8zS/gPcCb3KWB1lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6IY0-0006UU-Jr; Fri, 06 Sep 2019 18:01:24 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6IXu-0006Tm-5Q
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 18:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567792849;
 bh=xVYuCQqLcZVbf9PcChnQS/tQblf6mKmIsw4LgYWVZWY=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=qQanclc+OrhhLhZINNtbFqIE5J0xoQ9TgMWQ7T4BhG8wb/HRGm7QP898/z8UO5ss+
 NaMzdvb5NlsaNJFGvFP3wt0dW1rGWJU9ADjxrHOlBUFVLpM7AjEpOpvTjU4g6AUj4Q
 WTMcevEgE4KgJRE4zrSLuLqDzya0XouJsQIDvQak=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.58.4]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lba7D-1iYVYp3xr1-00lI1D; Fri, 06
 Sep 2019 20:00:49 +0200
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] nvmet: Use PTR_ERR_OR_ZERO() in nvmet_init_discovery()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <b35ec629-f75f-2eee-1db1-98874f486258@web.de>
Date: Fri, 6 Sep 2019 20:00:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:WwaUBh9X97mDDfAJEsvYV1seSyPqVsj99SmWcQfzbjGZJWBsPTM
 gfH5bQ8F01iAwiQ6ret+Y5T9Q0IVBI26VnX1MEw6/fFB4DIVIPlFyMFUvAczK2PYSqPltwU
 h/GTnsfwK3Hv5N8prZBz5u1l1pwNT9Gx885SWR561ZaKurVt75e9c5k1E8ThRv1RlVqP1dZ
 BFikeWWI7DRQBl1XPk31g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8DhsnfLmuGw=:4M9YdKulHjkVlhj97+h1Aq
 9P7BsspHc4v28pOHxxrwjke+OAN3pTZJU0NGxWotCOb3KcT0GWYg6vzsu2temWNuXPmyYeLHc
 6hJWaMOP66S1r87k1NUk4pUKmkr++YEyXNGGFsDaBvX4oNM4yIi9kJML2RtPimpKRnUn1+uyC
 MdZI9z/6K/GhP6oWs++UkcVuikp3AUeqCv8sfKaxcyAUHdMIqzCxQRL15TcH0O9vdlm8wWyME
 H97be3Y/1zIUAyf7jqCzVZxMBKoMQHftXv83dp3X78rysAGmhsSu2YZX3kkCKrghK0Tnzeftq
 kEg9WVLaDQp1duLeO+I4ljRWmWrAVS2yqpVpMVAVJvicSlA2opNBPUZrnq08/XCD59c8qWIvj
 hkRjl7VNKWnf96aPl12G63IshZLbsUYrzZIgMu7p/Bn2hxHf+c2BAFnjZhkeVM670nzhU6RZ8
 Ct9c6vpHnAJ2TOj7pIRmj81BLOADAqgMXFlGCmNGJmYL04JmAaSViu4pD0IqpCd/gNvNWNSmh
 vl2mvNBCDCJEtEpDeapy3220vxNR7YUQCyzAHNmtwugXc6NInfc6W/iBod1QQ++DwJhtPV69A
 eKANdhbOCXT+F0OqU/LbI5lrGVF9hlAirRbeUpJd9xlSi7fAwL4LmgLEshkWzhiJvg/3tt3KF
 80D9bn3o6hESK3YpRoI1F6JroIA0GK9cLQbNEjdzq0wawAMSrrZ61sJVi4gSy+iXzAPefWjRU
 VCh7a17GP3t2Q9bRtc8xU0SRKHNvU4yMiLlhM9Sd9acjTStP1mSdRltxJt9cZ5UM9WNYoLhxr
 enXY8Dfmz+wn9GgRYc37/JJy8prb8k99jWaX7ksm6n9R7Bh1Pz8tI1Hl2+jxwn1YTMQXsDiXA
 OGIEPbVjA3eQBPdE0bi3RFLNZDApILavQ15g8qS56pX79yDG8D/Vd/Rr8TiFdyLFUS6JGk6mZ
 x2ShCtnYPjAz91GrvNS3/br0Pp+KmU+6OHSqIQfPaQQ8EHdpK3ncW47KJinN90IZkGCc9j12S
 3gDnXDLh51ixaGXaU/HFn0tYQpb8uoaYLmInJyjeJ80W8kbUXDQWBkcYWoPmygQ63f1tzTTqn
 +6pWmFdWleVkYsrcKodzeY7OeqPnNIp2V2QLInPgusmF8nbLkIwQLhzL0kjyXbx+qC3mjcr6T
 JFvYIdElyQ3wH7SZ+Sx5OrcKREgErfy4OZFqC5YUB63YTx7MKIQH1WcmQ8lsazP6k878jFPx8
 aLBmjsrm+6lUp0tBd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_110118_544030_1D8340F8 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: YueHaibing <yuehaibing@huawei.com>, zhong jiang <zhongjiang@huawei.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Fri, 6 Sep 2019 19:50:19 +0200

Simplify this function implementation by using a known function.

Generated by: scripts/coccinelle/api/ptr_ret.cocci
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/nvme/target/discovery.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index 8efca26b4776..3764a8900850 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -381,9 +381,7 @@ int __init nvmet_init_discovery(void)
 {
 	nvmet_disc_subsys =
 		nvmet_subsys_alloc(NVME_DISC_SUBSYS_NAME, NVME_NQN_DISC);
-	if (IS_ERR(nvmet_disc_subsys))
-		return PTR_ERR(nvmet_disc_subsys);
-	return 0;
+	return PTR_ERR_OR_ZERO(nvmet_disc_subsys);
 }

 void nvmet_exit_discovery(void)
--
2.23.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
