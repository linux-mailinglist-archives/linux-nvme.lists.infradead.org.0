Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBF8873C0
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 10:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/D0utkjsRef8HNJJfuouvWyAfr/j4SZU2jFiQbDO5A=; b=Nd61B9fK6798tX
	SwPhdX75k99n0kCYvFSrBE0D3dIKZ0mz5aGXd1xYPe1ZZu0DezLmx6JSoWxcwqxT8v43jjWig62yD
	/UxR9zWsmzIPUJHvh/J+//FvYBpNmw2nQJrZch1txY/DcN3qKQd03INkZzg8ZJx0o/RyEKX+5BznH
	uV6+d4SviIIL1vF3bEJEH+GiL1O51SaNIjSOCJB7joj656I8j2e7rNn0za5alDtHWncI9qiheMhEV
	oP+L0IglV6vXZsh22uMAylA8sLxSEu03CZNcw/g5AgHyHtszgpnAV82EM5jNoyqTcUE6i9F4pjNjM
	0hpgv2XTv82NuX1LRp6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzuV-0003La-0t; Fri, 09 Aug 2019 08:06:03 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzuM-0003LB-5t
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 08:05:55 +0000
Received: by mail-ot1-f68.google.com with SMTP id b7so79169499otl.11
 for <linux-nvme@lists.infradead.org>; Fri, 09 Aug 2019 01:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sr58cY4zdsgPpx95oJLIxoU1rGwghcNfH7JlzOMAsu4=;
 b=IhplaSW/S1jitCzLvMh12GNE6ML9248H+HB9MelXPV7TSS7hml0JymTc03BxbR9Jaw
 KX6VM58AB4kXC4kgKYZUr/up4t3I7oI07o0i8PsuzJOAAGF5g3dRTNVzajIbRA+3VbfM
 F8Mb4FSUmCruo5bJMNSKWjADK6xfsxlMhxKqJKe4VGSkGH8V9lV5RTrku21JSlWymTaz
 GqqsoYb+1KKN1KaL5JmKZpEsx0hCJZp8bUud4m3SBn2QrI1ArPz2HCorNcm79TbTfQBv
 hXZPHE61cpG1GMVXqXP+YCPLHj5SkYIFfZGm+vXwN8sSYBSV0YCYW0iW2WVHYgX4B7zG
 HBsQ==
X-Gm-Message-State: APjAAAUsq6R6pX5NGSUtgfoookfOy7bZWWqet7PCf8xS+JTXSkoauE8F
 4AxHQtdBB86a6mCtHjLljZnQgOI0Gs8LxbLYDHE=
X-Google-Smtp-Source: APXvYqwpMqzGpisGEHKCizBrN6MIEGBsCEvXSslf8jFdbZ46Bddh5AKgBJk/fXIOFBpukkxQI73f9PvbdNeJ9XIB+90=
X-Received: by 2002:aca:d907:: with SMTP id q7mr5177724oig.68.1565337953260;
 Fri, 09 Aug 2019 01:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <47415939.KV5G6iaeJG@kreacher>
 <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain> <2184247.yL3mcj2FRQ@kreacher>
 <20190808221353.GA27570@localhost.localdomain>
In-Reply-To: <20190808221353.GA27570@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 9 Aug 2019 10:05:42 +0200
Message-ID: <CAJZ5v0hh3Yfx0Kbt11NEXV9q5RtApuvvg5JZ2O_rZLvixOWSOA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_010554_223379_E0058C46 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Linux PCI <linux-pci@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 12:16 AM Keith Busch <kbusch@kernel.org> wrote:
>
> The v3 series looks good to me.
>
> Reviewed-by: Keith Busch <keith.busch@intel.com>
>
> Bjorn,
>
> If you're okay with the series, we can either take it through nvme,
> or you can feel free to apply through pci, whichever you prefer.

Actually, I can apply it too with your R-by along with the PCIe patch
ACKed by Bjorn.  Please let me know if that works for you.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
