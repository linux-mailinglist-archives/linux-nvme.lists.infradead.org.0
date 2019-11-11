Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CB9F8246
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 22:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1sPdKTtinlM2ZRIvwAxizLxhCqayb01ftSSDLEzas8=; b=oZTQcYrQbmnj5Q
	bDPwkm6SF+sPOLYPRqqGvgV+7xpatTmmTAMJFhmLN6tu2VnJ6P2wlKh0Yto9fsQWLV1jfK6HStX1X
	UaiZPMB+lowpCHwTUYq2lXWakrgRvZH4r0d27lX4YDRZWmZYfdBC42iG1rbemYtyOX35CI4yERv/p
	O3JFyVEjkLRRdLzBRb9GsUWPLdcF4n5P6nIhGqTRhwtfSNHtSJZymxllhikc8EUulQ7ZDOaETyhlZ
	AslzBRnzgVXMIsdYoaooBkoY0bQB61bcGBKyy3IjquV4MlDnZruZxpc3n325c85E5STsWNgd6V4eN
	EbrDJyLmgfksJt0SpUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUHJd-0000Md-6o; Mon, 11 Nov 2019 21:33:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHJW-0000Kc-0n
 for linux-nvme@lists.infradead.org; Mon, 11 Nov 2019 21:33:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id n21so15391362ljg.12
 for <linux-nvme@lists.infradead.org>; Mon, 11 Nov 2019 13:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EkuJdAUqLhO37Xog7hFtb+aT8vazqfXgcjtA7SyhWEM=;
 b=k4eOYsri0w6XOlZCdf7P084yo6O7L1TJstF6Pu+hSlk7vW3lwXpd2MzO0Ilq2GKM9G
 875XCJMh8bIDrXJyWLgAyisOk8QUDFGc+8VNRGP2WbGsPZ1JMy4JohvrVaFO02oAn+cG
 GT84K4jMd2C/Toq2BlvzMC3eGYdlzGljIb8UTxWPVbTtMANq/Re6Rd43fxVq5JnuhBX4
 1GKpNuxprveZ+p5cNgvazNJl9pJawzxbeMl5ugX7ZTx+ZI7h5/1jJHNumbzTKcln1oGV
 0dzztyfuHQHOlrRrPQqvUBcZw3rljLp4z4V2sHehPmt670i8GGWzYnYjVVmwqbF9k7MN
 nnUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EkuJdAUqLhO37Xog7hFtb+aT8vazqfXgcjtA7SyhWEM=;
 b=bz8gTHfzMA11L3HOk2eD2JthZQZ6HldmB4AmSH7b82KVNPKYrEClHiwPFim3sOOtQo
 aNi/Ynb1WW0V/zzNzUbRFWa/W3HcsaQaqsOh9sKGDK1+JhN1wpHqYTVjsyEPrOqImqDa
 6Oao9kD+1oPImL87qTtSlRDikPhOJC4lYbDp1teBkuUo5WN6ZKd8ZWYlpfMKC6i3Gypz
 YLevaXCpuHp4SvTbyzqacrc9rV23l9tleeJYWomEibVQPY3scXpw3WlA2XE5t2JTskyi
 jiTDUIyEpIVyW4cy7NQfsntdqR851ynH6eCe/2yGbJlvWsi2E16rxoR9w+oDxPy0MQ7c
 CsMw==
X-Gm-Message-State: APjAAAVWS2AuIQChY4OBG7W8yWT300jVW8woJYshdK+fxR7HEWAaz9II
 KscAGZ1P2/FAHsKt7ae7q+SI5r8r5ax7exgFv6dR8g==
X-Google-Smtp-Source: APXvYqzatbulSOotOeb73f+mEEd8AbnaVu+WC83YXOlDUc5Ps3ZfCa7y58nNWXYjZgHlfIqIWwGHKGsT3XLrSqRGFdw=
X-Received: by 2002:a05:651c:20a:: with SMTP id
 y10mr17533980ljn.76.1573508011119; 
 Mon, 11 Nov 2019 13:33:31 -0800 (PST)
MIME-Version: 1.0
References: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
 <20191111203743.GA25876@lst.de>
 <CABEDWGyMrDnuR+AzazHqpiHC9NrHFoVcW5iFREOey04Hv7xLqw@mail.gmail.com>
 <20191111211503.GA26588@lst.de>
In-Reply-To: <20191111211503.GA26588@lst.de>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Mon, 11 Nov 2019 13:33:20 -0800
Message-ID: <CABEDWGzmagoEsCHQkDVEVG=myxNhX97Hm8A0BKdEkLc_7zrZWw@mail.gmail.com>
Subject: Re: [PATCH RFC] PCI: endpoint: Add NVMe endpoint function driver
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_133334_058597_EBB022D2 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 1:15 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Nov 11, 2019 at 01:09:17PM -0800, Alan Mikhak wrote:
> > Thanks Christoph. Let me repeat what I think your comment is saying to me.
> > You prefer all parsing for nvme command received from host over PCIe
> > to be removed from nvme function driver and added to existing fabrics
> > command parsing in nvme target code with new flags introduced to
> > indicate fabrics vs. PCIe.
>
> At least for all the common commands, yes.  For Create / Delete SQ/CQ
> I am not entirely sure how to best implement them yet as there are
> valid arguments for keeping it entirely in the PCIe frontend or for
> having them in common code, and we'll need to figure out which weight
> more heavily.

I will look into moving all common commands to nvme target code.
It might take a bit of time and review for me to figure it out. In the meantime,
please look at the rest of the code even though its structure may not be
desirable for upstream acceptance. These are the type of comments that
I seek.

>
> > Any more thoughts?
>
> I'd love to eventually find time to play with this code.  Do you run
> it on unrelease SiFive hard cores, or is there a bitstream for a common
> FPGA platform available?-

I run it on an internal platform meant for verifying our PCIe endpoint
hardware. I use that platform to develop new functionality to enable,
simplify, and promote the integration of our PCIe endpoints into larger
systems. As far as I know, there is no public bitstream available since
the platform is for internal use.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
