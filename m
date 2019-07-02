Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60C65CFC0
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 14:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=51jXdE6BiUDZq4+tMkWmHG0R+1q7kq3Jk0+GSSIiypo=; b=kt/t8jDts41xrqA24GJx/o2R7
	Kz7wRTRO2/tniSj+cjTZImE4gNOQbkqW5fAmvBreokZiEnPMdsrz4uRH1r6Xiq5V9aG8ZoLc+F1bV
	kNqHQ5l3BWSjXJiWKrkd7xv09/+gV9szkqe60AgAEqjI/d7r+fcspyblNVqyNPrS4tq+qe9vQr4sD
	FK7aDySVzoqYka8XSAANvvo/HPJ0cPDryqx2+GalZmT4N4GYZse2mX1oOEOQxrkfhj2/K6l/4stp0
	l1lEXrpnwE5mvuHBLmTEWtE2/0UdMgpNvU0l+s7kHa1Ft7GAWiGj734aEsiL8MXE4W0ECuM5Er7dO
	DYtn6OKKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIDu-00058a-2H; Tue, 02 Jul 2019 12:49:26 +0000
Received: from smtpout11.ifi.lmu.de ([2001:4ca0:4000:0:141:84:214:246])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIDh-00057i-0a
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 12:49:14 +0000
Received: from [IPv6:2001:4ca0:4000:1011:141:84:1:30] (galois.bio.ifi.lmu.de
 [IPv6:2001:4ca0:4000:1011:141:84:1:30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: steiner.bio)
 by smtpin1.ifi.lmu.de (Postfix) with ESMTPSA id D35712573F4;
 Tue,  2 Jul 2019 14:49:08 +0200 (CEST)
Subject: Re: disk-activity trigger not working for nvme disk
To: Bryan Gurney <bgurney@redhat.com>, Keith Busch <keith.busch@gmail.com>
References: <79f17609-5b3d-0d29-1642-c9ce30beb7f9@bio.ifi.lmu.de>
 <CAOSXXT6U8BeyXYWP9x-LW4mNkWYtumWdyw+fc19HJMpxRLQeLA@mail.gmail.com>
 <CAHhmqcTdN9UfYJCmfQ1kzSF+mP8-xjZyxBjqGr0dCs6gqth5Pg@mail.gmail.com>
From: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Message-ID: <976249a8-9789-dd28-20d0-4917566c2f28@bio.ifi.lmu.de>
Date: Tue, 2 Jul 2019 14:49:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAHhmqcTdN9UfYJCmfQ1kzSF+mP8-xjZyxBjqGr0dCs6gqth5Pg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_054913_209876_B1B869FC 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Bryan Gurney wrote:

> The only callers of ledtrig_disk_activity() in the kernel right now
> seem to be ide (./drivers/ide/ide-disk.c) and libata
> (./drivers/ata/libata-core.c).
> 
> However, there's definitely a motivation to try and extend this to
> NVMe devices, for a key reason: each NVMe device is its own

So as far as I understand your mail, the nvme driver would have to
be extended to make use of ledtrig_disk_activity, is that correct?

However, Keith had argued

> We don't take any particular action to notify any subsystem 
> of IO activity, so if the blinky lights work as desired on 
> some nvme platforms but not this one,

and I was pretty sure that it was working for the NVMe in our HP AIO
Desktop, so I checked again. Indeed, the NumLock does light up, and
I didn't really care about it a lot when I saw it seemed to work.

But actually it shows a strange behaviour. Instead of flickering
when some I/O is done, the LED just flashes periodically, once a second.
No matter what kind of I/O is performed on the disk. So it's not really
working as disk activity indicator, and that would likely match Bryans
observation that nvme doesn't use ledtrig_disk_activity at all.



-- 
Dipl.-Inform. Frank Steiner   Web:  http://www.bio.ifi.lmu.de/~steiner/
Lehrstuhl f. Bioinformatik    Mail: http://www.bio.ifi.lmu.de/~steiner/m/
LMU, Amalienstr. 17           Phone: +49 89 2180-4049
80333 Muenchen, Germany       Fax:   +49 89 2180-99-4049
* Rekursion kann man erst verstehen, wenn man Rekursion verstanden hat. *

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
