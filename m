Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8F61BBA1
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 19:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vnd9/+u60TH2lclZ/d8OhACEj85/vOVq+YxyEC1lIlg=; b=Y2aQFGvYnYtxD0QrSjit5Zvst
	bD1BLYz1y4eL5mwvYVilmEUbSGLMoHoBiRC3T74ZBuCKpwsJD0qR8b8jNejkt3GYDKMwgrhxknrBw
	ZstxOG2tWXrOt8/+bFELqczUlhHXh4Ig/UQFgKPnNDT1FJgUBZXtnDcoPPFE0GemQvnQLrui1uIdu
	tLSa7m4G7yqNsyFNGw6kdwXaH152wx90YLwfW1EyUtZXB1HSfxsURhBB09GDRudDHX50escvn6psU
	2DWOyut+qw2e9XaUd2SChkmBDE0ht43IVChD78uEQFIa8M03c6UVnap1lmgmamM/p6i/0Uq2PNiLN
	7HlLnqXfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEZ2-0000pX-3o; Mon, 13 May 2019 17:16:36 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEYx-0000oF-6y
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 17:16:32 +0000
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hQEYt-0005px-4I
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 17:16:27 +0000
Received: by mail-pf1-f199.google.com with SMTP id a17so10002924pff.6
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2WuRwt1BUMyiCONirk08ch3xQZwKTcRL8gA1P1lbcVY=;
 b=iXqBgnnKthLTheuib2LldFUILDuUa538xZO6r/bHCwX3l8y05kpQHxmpdOOVv2PpOE
 JcugK/O4DwYxbHPuwhI3bjd6XiSyq6waU+KANOr9ApmfVWzKD1dvgTf2b1GB/QJWxXyu
 XO6UiA9kAJj9X7TPdOv3B2r8xk/Orm/1EJgZcxEUPHqeKbhJI1BBFXGIRCrGHObJEMSQ
 ATfP4tvgNtCGONeARgE+ZqJnp0ELoDTJ6I1DkYuT7P8fhl2pBiNJ/w53rUB3ngA7uNOl
 cB+zFSCHp0t6niWI0l0L2bYhKjmNWCXXNwk8rbWw+FgLTAQYSnhBlk94LlpwDhLrs8m9
 DTvw==
X-Gm-Message-State: APjAAAX5IEY/EGX4yLv2rxapd7kopnWnquk4UkSGmdTgsr7DDGJt21Qd
 1xH9d2CvvsRSzr6xEAF/HizcBDDea/+U2UAGgZtaz0uN+6lTJr1uOtacOlmbDbmQP1Kg5A7iz/O
 hnRAumi9cHcHy6GtV7cl/PN3/QVjlspOjjnz/6Q4Th7CL
X-Received: by 2002:a17:902:a415:: with SMTP id
 p21mr18635798plq.286.1557767785687; 
 Mon, 13 May 2019 10:16:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMpzkZBKa20L76h9qBox5leOqsefklOh+TGG6aIlOpne804YEEwfQcwN3ICe6Tsy0hWCt7CA==
X-Received: by 2002:a17:902:a415:: with SMTP id
 p21mr18635760plq.286.1557767785478; 
 Mon, 13 May 2019 10:16:25 -0700 (PDT)
Received: from 2001-b011-380f-14b9-a00c-6f16-94cc-5640.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-a00c-6f16-94cc-5640.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:a00c:6f16:94cc:5640])
 by smtp.gmail.com with ESMTPSA id k3sm6695967pfa.36.2019.05.13.10.16.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 10:16:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190513151652.GB15437@localhost.localdomain>
Date: Tue, 14 May 2019 01:16:22 +0800
Message-Id: <9AE4A3E7-CDB8-4730-8B4E-43C93FC0C47F@canonical.com>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143754.GE15318@localhost.localdomain>
 <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
 <20190513145708.GA25897@lst.de>
 <20190513151652.GB15437@localhost.localdomain>
To: Keith Busch <kbusch@kernel.org>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_101631_383282_257D22FB 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: sagi@grimberg.me, rafael@kernel.org, linux-pm@vger.kernel.org,
 Mario.Limonciello@dell.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

at 23:16, Keith Busch <kbusch@kernel.org> wrote:

> On Mon, May 13, 2019 at 04:57:08PM +0200, Christoph Hellwig wrote:
>> On Mon, May 13, 2019 at 02:54:49PM +0000, Mario.Limonciello@dell.com  
>> wrote:
>>> And NVME spec made it sound to me that while in a low power state it  
>>> shouldn't
>>> be available if the memory isn't available.
>>>
>>> NVME spec in 8.9:
>>>
>>> "Host software should request that the controller release the
>>> assigned ranges prior to a shutdown event, a Runtime D3 event, or any  
>>> other event
>>> that requires host software to reclaim the assigned ranges."
>>
>> The last part of the quoted text is the key - if the assigned range
>> is reclaimed, that is the memory is going to be used for something else,
>> we need to release the ranges.  But we do not release the ranges,
>> as we want to keep the memory in use so that we can quickly use it
>> again.
>
> Yes, this. As far as I know, the host memory range is still accessible in
> the idle suspend state. If there are states in which host memory is not
> accessible, a reference explaining the requirement will be most helpful.

Disabling HMB prior suspend makes my original patch work without memory  
barrier.

However, using the same trick on this patch still freezes the system during  
S2I.

Kai-Heng

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
