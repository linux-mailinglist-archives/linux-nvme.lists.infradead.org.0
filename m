Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774C6451D9
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 04:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R02fY4JYwP1h4oZiH2Akqu/Y7UBQiRQ1d3tzrwxbQVs=; b=Sqwl7JTBCojbZh
	6lpHqxQJVdE8EwZKdSYPx/QRz5n4c6dcge7gb4NdtdO0NXOL+bAzfZVsr+a3Ys0XALwlVrP+Txgb6
	zb034dTIV983rsTws2ob7zEAfJatzjHUd4tFWWNXx5WbjAM/MFCSNNcZ1vdvK+Bl6PBvNPnaBGMKI
	PfMDIwzWDJGWMh0thULUMRddfxLtwCDdXzKu1ftM6SiLupYqGlUNC+NxMAR838b+cGfZchEPMTuPm
	NWS1eNBclVrU16K1HmiHFYzdA4XfbID/Nn7AiIm45SZ9RwJbfLDRmsp5QZweETBVkNdWn1iXPSJy8
	0dnMBLwRGGJrAaWiSp4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbbvH-0008MN-Gf; Fri, 14 Jun 2019 02:26:35 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbbvD-0008LV-19
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 02:26:32 +0000
Received: by mail-qt1-x843.google.com with SMTP id j19so773176qtr.12
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 19:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LiOoADs+Q5z91q0BFH/hfKvDUqqapbQTXU8ncMrf99M=;
 b=uwiadcDhl26vPElVBSbZDabFb3ZE6S7BS3NtKXxz0gAL1w+mU3B7XGSP0TKRChf0QG
 qLjNLOYx2KLU4BUePq77d6nrIgFcJseoHDifbiVYZs43K3eHQPof84CQE2INw+fom/Sk
 AlZ7ILsFm4ODQYGhvDzyFyVfGVVtU3sQXtsHDzzNFSgX2xo4mskrrz9X5tBUXMVSwj2B
 JNyD1EEUdegFKa+egn7rxCq/8vxTTN1KnDj757mUOZW/XqjcW3DWLhpKs7Uay6xJYdee
 8XqL+l7Sm9kvlRNvI+HlZDyxmDjMwR2EQ3tje8e/zilP2LnIOZpuKaI1Lpq7EHo8WZjv
 f+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LiOoADs+Q5z91q0BFH/hfKvDUqqapbQTXU8ncMrf99M=;
 b=lStfEE7r6WX2tgz5uxxhI+0C1rJf74utsB7vvprbfcxnTGW1jISEr+RRBCDOD8n87F
 ibNg1CtmbUZQxSa7mnl00NxiB2DBuiAdbpV7I4hi4guRVIdqbFyF/r/e13vgjIHzVMqo
 ncHuS3Sa3p73me7Wp/TjPll67fI/RwOzh9w+wAa3FWeKi3wfAFiWFNo0S4LmrhfBFDoJ
 uXcF+u35lU8qnhKT4Vh978R8Ymo6gdM/Yn8+9U+UnQqkuCYDr65vhlzmiUaCDBzAuWCC
 p8mWPIVl06kPy1omBsFCFL6QQMcu8vt4VKPEjqoZbBAKZ7AtvQ9AjzIicoCIZthsv+Xd
 8Czw==
X-Gm-Message-State: APjAAAXdqMXEKExD3p/rb4qhbDLMlQx7QzoxUdHpk6ZWgA1jSXrOyGY5
 AuYo4xuaYI4AiHA7GTzCibm6RZ0X3m0tVSqZbxgDCQ==
X-Google-Smtp-Source: APXvYqzqe1/DHk1BGLZnH3KdvGW6KQDBwyXvUptRc8CEGriCukr0xUjYBj6CZBI0TGOmAn3teIaCliw6A0KIzqukAz8=
X-Received: by 2002:aed:21f0:: with SMTP id m45mr64329935qtc.391.1560479187623; 
 Thu, 13 Jun 2019 19:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
In-Reply-To: <20190613085402.GC13442@lst.de>
From: Daniel Drake <drake@endlessm.com>
Date: Fri, 14 Jun 2019 10:26:15 +0800
Message-ID: <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_192631_124722_13A9B700 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PCI <linux-pci@vger.kernel.org>, Keith Busch <keith.busch@gmail.com>,
 Keith Busch <kbusch@kernel.org>, linux-ide@vger.kernel.org,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linux Upstreaming Team <linux@endlessm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 4:54 PM Christoph Hellwig <hch@lst.de> wrote:
> So until we get very clear and good documentation from Intel on that
> I don't think any form of upstream support will fly.  And given that
> Dan who submitted the original patch can't even talk about this thing
> any more and apparently got a gag order doesn't really give me confidence
> any of this will ever work.

I realise the architecture here seems badly thought out, and the lack
of a decent spec makes the situation worse, but I'd encourage you to
reconsider this from the perspectives of:
 - Are the patches really more ugly than the underlying architecture?
 - We strive to make Linux work well on common platforms and sometimes
have to accept that hardware vendors do questionable things & do not
fully cooperate
 - It works out of the box on Windows

As you said years ago:
https://marc.info/?l=linux-ide&m=147923593001525&w=2
"It seems devices supporting this "slow down the devices and make life
hell for the OS" mode are getting more common, so we'll have to do
something about it."

The frequency of apperance of this configuration appears poised to
grow even more significantly at this point. There appears to be a
significant increase in consumer laptops in development that have NVMe
disk as the only storage device, and come with the BIOS option on by
default. When these reach point of sale, expect to see a whole bunch
more Linux users who struggle with this. We also have indication that
vendors are unwilling to deal with the logistics headache of having
different BIOS settings for Linux, so the lack of support here is
potentially going to stop those vendors from shipping Linux at all.

Even with a spec I don't imagine that we can meet the feature parity
of having the real NVMe PCI device available. Can we just accept the
compromises & start by focusing on the simple case of a consumer
home/family PC?

>  a) quirks on the PCI ID

Intel stated unequivocally that the PCI config space is not available.
So this isn't going to happen, spec or not.
https://marc.info/?l=linux-ide&m=147734288604783&w=2

If we run into a case where we absolutely need quirks, we could
examine doing that on the disk identification data available over the
NVMe protocol (e.g. vendor & model name).

>  b) reset handling, including the PCI device removal as the last
>     escalation step

Apparently can't be supported, but it's not clear that this actually
matters for a home PC...

https://marc.info/?l=linux-ide&m=147733119300691&w=2
"The driver seems to already comprehend instances where the
device does not support nvme_reset_subsystem() requests."

https://marc.info/?l=linux-ide&m=147734288604783&w=2
"Talking with Keith, subsystem-resets are a feature of enterprise-class
NVMe devices.  I think those features are out of scope for the class
of devices that will find themselves in a platform with this
configuration, same for hot-plug."

>  c) SR-IOV VFs and their management

This seems like a server/virtualization topic. I don't see any issues
in not supporting this in the context of a consumer PC.
It seems reasonable to expect people interested in this to be required
to read the kernel logs (to see the message) and proceed with changing
the BIOS setting.

>  d) power management

If there is a way to control the NVMe device power separately from the
AHCI device that would of course be nice, but this seems secondary to
the larger problem of users not being able to access their storage
device.

I'm hopeful that after years of waiting for the situation to improve
without any positive developments, we can find a way to go with the
code we have now, and if we do get a spec from Intel at any point,
make any relevant code improvments when that happens.

I'll work on refreshing Dan's patches & clarifying the knowledge we
have within there, plus the limitations.

Thanks,
Daniel

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
