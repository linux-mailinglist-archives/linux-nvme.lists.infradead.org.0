Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2C0B2BCF
	for <lists+linux-nvme@lfdr.de>; Sat, 14 Sep 2019 17:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bHD3LxBnrTUaSxrx2SEucxG4HpFgbFmKmgqH4FWhOo=; b=QcXk0/6XlmU0iJ
	nq4+gMtpbqCWmjqMUUUPIzyS9r/sglvBdEqAxEDWG7yPmQZheM8FEApo0LAxsEVsdbqh0Q1PlRjV8
	8oL6K0H24x0SybD/xNaWQdPcfTxn5avXPLQKz8MCqBxv41ccI8qcE40O8Sz6Su5kTlSFXAFiHs+P9
	4zcC7Kj3Kv/ZRuZjn94H0cUyUkFyUAAEJoKICzqOnk5yOU95RVQf7lX1o3yJGoQWbs4iaG7GOl9IX
	LlFi5/WQyeK7VOk+lUku32XbK3HsGZjYSn7mOVWX+DQs1PynEDcKI42c23Ki2CXsST5rsmQBA4XUD
	2yqg3c99JKiUDGPcl5Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i99pe-0007ti-D7; Sat, 14 Sep 2019 15:19:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i99pV-0007sN-Ox
 for linux-nvme@lists.infradead.org; Sat, 14 Sep 2019 15:19:19 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80C9E206A4;
 Sat, 14 Sep 2019 15:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568474356;
 bh=AHVi0TSajc8B/cHr3jeu+xvJ8kz2E/CDZ43vsGFnmIQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0twkSDjcOUJuWtsou8176t3r8RzTFzjnEEW5KLeyjM8fpq4CzvG/XueyOEr1RPJlj
 qJ8Op3zTR2Ng8jTOkCHod8Rlee5o/yAEvSW5f8SOHxnN1nkcctCJfoVYaxKAeKH+0G
 c5mC5oS37FNIm4Dal8YI3/gTyITEYGbXqDKm/fXg=
Date: Sat, 14 Sep 2019 09:19:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: incorrect sysfs reported by realpath for nvme disk when
 nvme-core:multipath enabled
Message-ID: <20190914151913.GA562@keith-busch>
References: <1753358694.11967186.1568394608486.JavaMail.zimbra@redhat.com>
 <1137688987.11971676.1568396450210.JavaMail.zimbra@redhat.com>
 <20190913175637.GC17139@keith-busch>
 <a24713ad-e907-2cfd-b1da-cef552c29b14@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a24713ad-e907-2cfd-b1da-cef552c29b14@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_081917_831312_35A4067A 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yi Zhang <yi.zhang@redhat.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 11:43:40AM -0700, Sagi Grimberg wrote:
> > This was confusing to enough people that we've since changed the naming
> > to something people expect to see, but that's staged in 5.4. Given the
> > number of people who find this confusing, this might be worth making a
> > stable patch.
> 
> I agree here.

Okay, I'll forward the commit to stable once merged to mainline. I don't
think we can count on the stable bot to pick this one up. We only need
this back to 4.19 as all the previous stables with this naming scheme
have be EOL'ed.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
