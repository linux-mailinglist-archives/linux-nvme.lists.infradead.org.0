Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A5E10FA33
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 09:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jot/3gIrX0XJW9/Ngq7W8UaVJysryNVD0pYeM9Hu6g4=; b=BeBuAb9T8Q15NN
	MfLJwN4sCfYRhf/oEMLsUUkieoW+z3ViGxFMAWoNIflw7xgYanr809vcjyhY+ocS95n/fZFVBiYGC
	QMdj7BwDrlGc3qAElXOl8IMxlAqx/Nm3GUZBakmJglZxO1KPDR7ROt2bIQVWKKpTC/2D29C9QtaFq
	AiKGSksNVr+Pcns5ZfGr3q1FEVqwuWIa9XtrTUzrX0IB0RkqeZY8/9CeSJ/mbQ4mv4oL0zkea0PKu
	FNx0Xgk8OYFLZjwvXAzryiMPl5yHwFiMNlYXBoVWo934hvX2vn5N0QNy1RDSwLotzaD2LG0sPhWSc
	AwSYrhM5X0/8cM0wtq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3uP-0001FH-Ix; Tue, 03 Dec 2019 08:51:49 +0000
Received: from forward500j.mail.yandex.net ([5.45.198.250])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3uI-0001Ef-Px
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 08:51:45 +0000
Received: from mxback22o.mail.yandex.net (mxback22o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::73])
 by forward500j.mail.yandex.net (Yandex) with ESMTP id D5D2E11C0E9F
 for <linux-nvme@lists.infradead.org>; Tue,  3 Dec 2019 11:51:36 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback22o.mail.yandex.net (mxback/Yandex) with ESMTP id d275wXsQjr-pa7S5cit;
 Tue, 03 Dec 2019 11:51:36 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1575363096; bh=aH8COMyT39halqjuZHpq7VAZf2SlLaKlLoiNX/Fs56c=;
 h=Message-Id:Subject:In-Reply-To:Date:References:To:From;
 b=HghVNqiydP9fveiiDBtswW0sGz968nVBs4BpQNGPYwy5PzxH4d9KRx6cBMBzaCxDt
 ooBO3ZiIMN579YNewknKGAmxU11nxPWOaTnDHgk5fLsH6biLvszdHEEc91ty6o+lEG
 v1vRqoZjm0+Ye+6Pcd2k4WbwEKbc4CKDdmL89oF0=
Authentication-Results: mxback22o.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by myt3-605d5ea4bc20.qloud-c.yandex.net with HTTP;
 Tue, 03 Dec 2019 11:51:36 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
In-Reply-To: <BYAPR04MB5749D5699EB15878C41F4BA386430@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <92087051575042507@sas2-7fadb031fd9b.qloud-c.yandex.net>
 <114736651575042639@vla4-d1c3bcedfacb.qloud-c.yandex.net>
 <BYAPR04MB5749D5699EB15878C41F4BA386430@BYAPR04MB5749.namprd04.prod.outlook.com>
Subject: Re: NVMeoF driver & Reservations
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Tue, 03 Dec 2019 11:51:36 +0300
Message-Id: <11467571575363096@myt3-605d5ea4bc20.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_005143_208179_A350E796 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.250 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [5.45.198.250 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alextalker[at]yandex.ru)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> But if you have a legit scenario or a
> use-case I'll be happy to work on this.

I think in SCSI subsystems this support is usually made to pass-by Microsoft Windows Server Failover Clustering requirements.
Regarding the use-case I think this is as usual an effort to create
a lock mechanism in order to synchronize access to the same device without an additional layer on client side.

I don't know whether NVMeoF works on Windows at all by now, haven't checked yet.
Anyway, I'd like to see your code if you published it anywhere.
Unlikely with SCSI, NVMe Reservations seems to be easier to implement with dedicated HostNQN identifier,
digging through the specification conditions.

------------------
Best regards,
Alex

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
