Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9877EB24C9
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 19:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZii9ThJwCUN8rmP+pMrPuH3DRofKRWR3dz6A1Vf7Kg=; b=teeh6O9YuLy6N4
	SL76qJW6jnTQo+NFRKSbmywGdcoi9S3ZecBiMMSb01mWAzJieVH0b/ig6p+eeIOnenRX0J0Nrqfhw
	2Qjv5bY7Cekq/vYgYEf5qdhuI5WQujk85PJzpXdhXpR3zJMWVBU6Dn7lPt1vGgy1XJuxW7YGnUfO+
	NQpG+CZClzZHFn/+e4MgfiQG0vSqaSPNkMBAWzl2PLkDTWxg/0t4mNh2IoppW0VkizCKq75CvUdFo
	HEgnk9WrsgWW1aiWe+8yYM1ValDMh8x4BG+8jBmLQAnClMhFyoVjYlm+mJD5tgtAWw7x8ksdoIPTC
	TP527OQLKpht9VCJ0U8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8poP-0005x7-W2; Fri, 13 Sep 2019 17:56:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8poH-0005wo-5b
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 17:56:42 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60B9E2084F;
 Fri, 13 Sep 2019 17:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568397400;
 bh=fd27stDDM8L2d8Lijm8UAq2mRKBh+2D6L/k5EN2p8U8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V7M2gXogDPzxfwZe1MqUVaTLRBm+vh9QBaNsjYpuoFGf+yWx8LwXbi2ZTPw+Gad6e
 0eGiYXqlva48Rdxp0F5tS5cUY+kKHl6uIjlpMuDPUqvzXriq79x/t7KHGn4T8Jbv2o
 JO7e5MDAABK+lC6jy0U7eREh4SDa6O5zMs2l9SPY=
Date: Fri, 13 Sep 2019 11:56:38 -0600
From: Keith Busch <kbusch@kernel.org>
To: Yi Zhang <yi.zhang@redhat.com>
Subject: Re: incorrect sysfs reported by realpath for nvme disk when
 nvme-core:multipath enabled
Message-ID: <20190913175637.GC17139@keith-busch>
References: <1753358694.11967186.1568394608486.JavaMail.zimbra@redhat.com>
 <1137688987.11971676.1568396450210.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1137688987.11971676.1568396450210.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_105641_235785_27209D2C 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 01:40:50PM -0400, Yi Zhang wrote:
> # realpath  /sys/dev/block/259:0
> /sys/devices/pci0000:ae/0000:ae:00.0/0000:af:00.0/nvme/nvme1/nvme0n1   --------> should it be /sys/devices/pci0000:ae/0000:ae:00.0/0000:af:00.0/nvme/nvme0/nvme0n1 ?

The sysfs links are correct. The controller-namespacenaming is just not
related, which is what you're observing.

This was confusing to enough people that we've since changed the naming
to something people expect to see, but that's staged in 5.4. Given the
number of people who find this confusing, this might be worth making a
stable patch.
 
> # realpath  /sys/dev/block/259:2
> /sys/devices/virtual/nvme-subsystem/nvme-subsys1/nvme1n1               --------> No pci address returned, bug?

For mulitpath capable controllers, the parent of a namespace is the
subsystem rather than a controller. The subsystem is a virtual device
that doesn't have a physical pci address.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
