Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D5E10E163
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Dec 2019 11:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qs1q/qZc5mvEZFzN2aTQUvLpstC2/3XpPJU6f70YeiI=; b=HKfzXfOJt0m/J2
	coKXD/Z0Xe3nqlo15OD3PgVG47U882p06x4ozUbb+7e5tqe4bb4pCMnQCB5FnsM0qc4LFBgxpcVCL
	zhQJVTywRUkQO2iChffjW9qeyPxXoCWhIFmjtuwMyTshSxE50OGiVtwsuRPNKs2cssdYzFtKmHgPy
	bsGXSfjVVucsoHVzDfdQP3Q2Lc13FsTJXzGiHtD0IrIjznuSHmD9R3+cjPebbvacAPMuf47OSPAcC
	vSh1DJpDmxrmv2C+a/4rg+x8gsy4bBfo0CPXMaNUabKdY4TUpbO9vfL7IjrO9T0DL007yKbvoVeW8
	FTNRZCweZDmipW2sZTFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibMJY-0002Oa-6s; Sun, 01 Dec 2019 10:18:52 +0000
Received: from forward501o.mail.yandex.net ([37.140.190.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaiXd-0006RH-1X
 for linux-nvme@lists.infradead.org; Fri, 29 Nov 2019 15:50:46 +0000
Received: from mxback6q.mail.yandex.net (mxback6q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:42:0:640:9de5:975f])
 by forward501o.mail.yandex.net (Yandex) with ESMTP id 838B01E807C1
 for <linux-nvme@lists.infradead.org>; Fri, 29 Nov 2019 18:50:40 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback6q.mail.yandex.net (mxback/Yandex) with ESMTP id byCKp9p3CA-od2GSG4E; 
 Fri, 29 Nov 2019 18:50:40 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1575042640; bh=66RIdI0sajCD0TjP3CEJMJRqgfk7sAt7aryIITxiJ7Y=;
 h=Message-Id:Subject:In-Reply-To:Date:References:To:From;
 b=KA/xntobSHr0nq0VcYtQeiXarjQClr2x7AiyJs+MhSw/FxgRXuy8cwX9+Nvg4TaCg
 MYTz2jpNwoaAq7wNYK/1qccUDuYiz314gLEPpxYijJR5FAI8haigSAhS6zDAjVXMGl
 XwEXi64uJ6Z35vy1RjtAZYOIxE+jd64cufka+Csw=
Authentication-Results: mxback6q.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by vla4-d1c3bcedfacb.qloud-c.yandex.net with HTTP;
 Fri, 29 Nov 2019 18:50:39 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
In-Reply-To: <92087051575042507@sas2-7fadb031fd9b.qloud-c.yandex.net>
References: <92087051575042507@sas2-7fadb031fd9b.qloud-c.yandex.net>
Subject: NVMeoF driver & Reservations
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 29 Nov 2019 18:50:39 +0300
Message-Id: <114736651575042639@vla4-d1c3bcedfacb.qloud-c.yandex.net>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_075045_270481_F9EA7C71 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.203 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alextalker[at]yandex.ru)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Mailman-Approved-At: Sun, 01 Dec 2019 02:18:49 -0800
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

Hi!

Is there plans to implement Reservations support in target driver(from NVMe v1.4 part 8.8)?
I see that host support is already implemented in nvme utility & driver level.
However, I haven't found hardware on which it works - target driver doesn't support this command and PCIe drives available to me also.

So, I'm wondering if anyone begin to implement this feature at least on single target level.

------------------
Best regards,
Alex
>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
