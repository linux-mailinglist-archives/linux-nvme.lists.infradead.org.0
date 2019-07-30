Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0827B2A3
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 20:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nVtEdI2yML2BIGuO5ztlm1+60df3UGA+HYt+qefdeDU=; b=MgTSBVAy0zFVVP3BRaofUOrXe
	wlyGuQ7AYMqv7Wgz15i9kdfQapeYlAy5YgjABYYCeUWyO9gP/bgqb8PhHJMCTOWwLdgU3E6c/Akaa
	kOj+4MKye4t7DHEFjCUHj+ak6pYtwvxkxUl0F/m/NHx6cQXZv3NeV5YilCWkFfalb0fQxscVEW/ju
	KV3yxAfPMGDTkA40wP4ZXOPuc3b/IupncdW0ng8t41CGrBxVGrBRgm+jpGgwKQf9PjKGfqGuSdxhf
	2UkJ6gNUIyQ2M03IrPjIABTR7j+ePhZ2pnzhxWAFoLlVqH1qiHifgs0How7rTtscYxvYtBieNqR57
	1HPnGonBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsXCU-0001GT-PA; Tue, 30 Jul 2019 18:50:18 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsXCN-0001Ae-40
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 18:50:12 +0000
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hsXCI-0008Q8-Nw
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 18:50:06 +0000
Received: by mail-pf1-f197.google.com with SMTP id e25so41433230pfn.5
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 11:50:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8AX9oe3ZacxjT4EiPIUnCdg/jOWgIIX7DxG+k/pFbS8=;
 b=t3uRwu8wPncOMLgpzDlt6FigzMpD+zG5081nQFO1/wGSdoZNk3ejDauhhicHq7M1GZ
 KPvYDvJ5Jti/7rsjvwJXj0cJKnLMkO8ibxUo6iEV8WIOXgBQHfRHWLcprV3x5OPIyDRC
 HFgFbRa3UesWlqMsLi5F/LphJ0Zj4ElUBwfYbg2s2CxwYJebzbdwURz8uwJSHkILjIfZ
 SyE3v1pEjh2gTmbJvH1mpTRpRn+6KugCGeaJWqf2u22X8/tc7ks4CCjEn19EzqdSISqF
 os0jMz+JcbOfsDM7Rsb40WW66UJKyF1Zqjx1HlqCogNz74qR/cgFEaDWEU8Ol+KuAaHR
 FBzA==
X-Gm-Message-State: APjAAAVwhktpt2EpD2cLyJPkP+uO7lcV6UBcPLuiNUnmQ9/bzwMXM0mW
 GPRnIr1scW324LW3Z1QfPrKlbwcr5jFSytGDpyXcOrvYbP9etrd9ut4ddOI108VVWF+nn2Fm+zi
 xoXOvoVItwsUg660Jc1ZhS3UmuMXh8csMFhwWiOqjdmfu
X-Received: by 2002:a17:902:6b81:: with SMTP id
 p1mr113381981plk.91.1564512605414; 
 Tue, 30 Jul 2019 11:50:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvCU5ize3AwSJB2TM51RQU/Q2wBF3GrSjiotc5LGGtRBCPjWjkrkKo6GCfdHilGoejjSBy7g==
X-Received: by 2002:a17:902:6b81:: with SMTP id
 p1mr113381952plk.91.1564512605139; 
 Tue, 30 Jul 2019 11:50:05 -0700 (PDT)
Received: from 2001-b011-380f-37d3-91ca-5fad-3233-fb26.dynamic-ip6.hinet.net
 (2001-b011-380f-37d3-91ca-5fad-3233-fb26.dynamic-ip6.hinet.net.
 [2001:b011:380f:37d3:91ca:5fad:3233:fb26])
 by smtp.gmail.com with ESMTPSA id h1sm88791118pfo.152.2019.07.30.11.50.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 11:50:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
Date: Wed, 31 Jul 2019 02:50:01 +0800
Message-Id: <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
To: Mario.Limonciello@dell.com
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_115011_292418_F2136A96 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Keith Busch <kbusch@kernel.org>, rajatja@google.com,
 hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

at 01:14, <Mario.Limonciello@dell.com> <Mario.Limonciello@dell.com> wrote:

>> -----Original Message-----
>> From: Keith Busch <kbusch@kernel.org>
>> Sent: Tuesday, July 30, 2019 9:42 AM
>> To: Rafael J. Wysocki
>> Cc: Busch, Keith; Limonciello, Mario; Kai-Heng Feng; Christoph Hellwig;  
>> Sagi
>> Grimberg; linux-nvme; Linux PM; Linux Kernel Mailing List; Rajat Jain
>> Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state  
>> for
>> suspend" has problems
>>
>>
>> [EXTERNAL EMAIL]
>>
>> On Tue, Jul 30, 2019 at 03:45:31AM -0700, Rafael J. Wysocki wrote:
>>> So I can reproduce this problem with plain 5.3-rc1 and the patch below  
>>> fixes it.
>>>
>>> Also Mario reports that the same patch needs to be applied for his 9380  
>>> to
>> reach
>>> SLP_S0 after some additional changes under testing/review now, so here it
>> goes.
>>> [The changes mentioned above are in the pm-s2idle-testing branch in the
>>>  linux-pm.git tree at kernel.org.]
>>>
>>> ---
>>> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>> Subject: [PATCH] nvme-pci: Do not prevent PCI bus-level PM from being  
>>> used
>>>
>>> One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
>>> host managed power state for suspend") was adding a pci_save_state()
>>> call to nvme_suspend() in order to prevent the PCI bus-level PM from
>>> being applied to the suspended NVMe devices, but that causes the NVMe
>>> drive (PC401 NVMe SK hynix 256GB) in my Dell XPS13 9380 to prevent
>>> the SoC from reaching package idle states deeper than PC3, which is
>>> way insufficient for system suspend.
>>>
>>> Fix this issue by removing the pci_save_state() call in question.
>>
>> I'm okay with the patch if we can get confirmation this doesn't break
>> any previously tested devices. I recall we add the pci_save_state() in
>> the first place specifically to prevent PCI D3 since that was reported
>> to break some devices' low power settings. Kai-Heng or Mario, any input
>> here?
>
> It's entirely possible that in fixing the shutdown/flush/send NVME power  
> state command
> that D3 will be OK now but it will take some time to double check across  
> the variety of disks that
> we tested before.

Just did a quick test, this patch regress SK Hynix BC501, the SoC stays at  
PC3 once the patch is applied.

Kai-Heng

>
> What's kernel policy in terms of adding a module parameter and removing  
> it later?  My gut
> reaction is I'd like to see that behind a module parameter and if we see  
> that all the disks
> are actually OK we can potentially rip it out in a future release.  Also  
> gives us a knob for easier
> wider testing outside of the 4 of us.
>
>>> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for  
>>> suspend")
>>> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>> ---
>>>  drivers/nvme/host/pci.c |    8 +-------
>>>  1 file changed, 1 insertion(+), 7 deletions(-)
>>>
>>> Index: linux-pm/drivers/nvme/host/pci.c
>> ==============================================================
>> =====
>>> --- linux-pm.orig/drivers/nvme/host/pci.c
>>> +++ linux-pm/drivers/nvme/host/pci.c
>>> @@ -2897,14 +2897,8 @@ static int nvme_suspend(struct device *d
>>>  		nvme_dev_disable(ndev, true);
>>>  		ctrl->npss = 0;
>>>  		ret = 0;
>>> -		goto unfreeze;
>>>  	}
>>> -	/*
>>> -	 * A saved state prevents pci pm from generically controlling the
>>> -	 * device's power. If we're using protocol specific settings, we don't
>>> -	 * want pci interfering.
>>> -	 */
>>> -	pci_save_state(pdev);
>>> +
>>>  unfreeze:
>>>  	nvme_unfreeze(ctrl);
>>>  	return ret;



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
