Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D51154B19
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Feb 2020 19:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRBFd5IYEtMbgRXv8AZxk1iLVAdcaYmalOfCFfNZcX8=; b=HmGs7nPq0TNJ4f
	qnOt5ziZq+PDkQEphyeazuxX5d7SVVQVY3KHtaiGCAzo07se+FpamhCzD2xhqr/yvQZrhTxAurGtC
	Do74uxThKZ5efUgz56wtZTtUQgbw9xWG/rCATdW24d67lU4ImKW2MuhKNtTyFcmuu/ZHM+myW5ef2
	yrF9/9q06ITJkLAjFp3qVOX5LdB+fg/BanxZSjVyTQNVZTe0SDk/HijQeKQ7GAIYlLN9xqFEKU1Kk
	KAI9JQsq5eQ95B1bD5V9Y/pf19+mLBDH1W0MAbsOnB5gXuKq5R/j1Tm5clfAACUaI/Kyh/aECEFx6
	XZTP2cOqBSZOMmoDiX5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izltI-0007ht-JO; Thu, 06 Feb 2020 18:28:40 +0000
Received: from forward105j.mail.yandex.net ([5.45.198.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izltC-0007h2-4l
 for linux-nvme@lists.infradead.org; Thu, 06 Feb 2020 18:28:37 +0000
Received: from mxback21g.mail.yandex.net (mxback21g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:321])
 by forward105j.mail.yandex.net (Yandex) with ESMTP id 117EFB20CE1
 for <linux-nvme@lists.infradead.org>; Thu,  6 Feb 2020 21:28:28 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback21g.mail.yandex.net (mxback/Yandex) with ESMTP id t8MYF2Q5yK-SR285CI8;
 Thu, 06 Feb 2020 21:28:27 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1581013707; bh=PC+alwCg+6LT4ZdapG18qDq0R3JEA21mdDgfirl2IJo=;
 h=Message-Id:Date:Subject:To:From;
 b=pnKe/KgYmsbzZEn8eiRoNlrf1ooQn2VJ63gNrbozy3q2/ureNHRAJchJwyb9+J0YT
 QEsGjZJqbAmHpTmVtphymfOw2mt99GC95EZxWQUldTcYrxYgM73mqXSb/Tzp7sx/aZ
 KF6tFEdANAdVE+OkbeFs2079kPRlaqO90e/mGa58=
Authentication-Results: mxback21g.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by iva7-8a189d9308a6.qloud-c.yandex.net with HTTP;
 Thu, 06 Feb 2020 21:28:27 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: linux-nvme@lists.infradead.org
Subject: NVMe/FC compatible hardware
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 06 Feb 2020 21:28:27 +0300
Message-Id: <5657351581013707@iva7-8a189d9308a6.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_102834_509923_0395DFE6 
X-CRM114-Status: UNSURE (   4.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.248 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [5.45.198.248 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alextalker[at]yandex.ru]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

Could anyone kindly clarify if NVMe/FC Linux drivers would work with any FibreChannel HBA?

I've connected ATTO Celerity FC-162E and ATTO Celerity FC-82EN cards(on subsystem & host respectively) and successfully managed to setup a port
but I struggle to connect to it, issuing the following command:

> nvme discover -t fc -a nn-0x20000010860370a4:pn-0x10000010860370a4  -w nn-0x2000001086036870:pn-0x2100001086036870

I get this error:

> [4164487.114514] (NULL device *): queue 0 connect admin queue failed (-111).
> [4164487.114519] nvme nvme0: NVME-FC{0}: reset: Reconnect attempt failed (-111)                                                                                           
> [4164487.114522] nvme nvme0: NVME-FC{0}: Reconnect attempt in 10 seconds
> [4164487.114535] nvme nvme0: NVME-FC{0}: new ctrl: NQN "nqn.2014-08.org.nvmexpress.discovery"
> [4164487.114672] nvme nvme0: Removing ctrl: NQN "nqn.2014-08.org.nvmexpress.discovery"

and nothing on subsystem(controller?) side.

I expect that if addr_tractive attribute of the port in ConfigFS equals 1, it means that selected port/HBA capable in utilization for NVMe-oF.
Am I wrong in that too?

Would anyone kindly provide hardware list where the FC driver works properly?

------------------
Best regards,
Alex

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
