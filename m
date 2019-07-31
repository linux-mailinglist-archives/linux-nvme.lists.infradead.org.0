Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237C57CFFF
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 23:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=753ncRZhLqKumqD/ydvaL2iNAuj+LzRHOA1lQCtkv4M=; b=keU0zX1SSOY3w9
	VqAUCDcknqOA42k++4Xkg0UW335F8/etU/47MFXPtk/UIdZlEpqlgQDmMGIihWIIsR3+B7aTB2yAw
	HRN34JcB/pRoe2h3Qz7i1YD2f0m2668xlzh8GJQGWXTZgiuhgHdMYjhEX4f4nXCawJETwXbOPOOnw
	0JY+bGG8FqBMD97vVT1nbKLVnjfWMRlEMuudEXneW2CsIXCYq9qN5tfVzOD3M33Z1Hn14g7voWihz
	cEeJJ2DNXy5y4f3XV5by/EXEDvFsBt84GHWnMqCiMbLc/GxNYJmtsirnS0xEqb0rTTj3ZGE1FwXvW
	dcMFFg+timcnJ2QmyOyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsw6v-00019l-9P; Wed, 31 Jul 2019 21:26:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsw6p-00018z-RF
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 21:26:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id q20so71677629otl.0
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 14:26:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gY7HXwIot63TGp2osyGwD6oiBom7P9dQMkdrdkS2Nes=;
 b=bvZ976XD/WXRyX6jmKuygwz/1cwJjXES3eYU2IUDyvSWrVbIW0U9A6UU7qZWRfyKEa
 nfO/bgu01fsGFFhfA2PgHiWOoer3lTxvPZCCNvBGjA9dbNJ24bEYhQfLi9ZlOEKA9Mso
 JGavDtRI4ljLF2qn9IZuNmuuZA3mW7rdSq7gg1Tl9nLZOug9LVINUk3AzPSvZe0coLfy
 UW8Y43pXI6fcS9TajyBbQ3qO93JyGuiJ0OPExpLqMNp/r9nSyrfgzplSpATz5XbnXLJK
 A2bKWfoH7ohNfTsXj+Ahd9I7/AYtxZEr4W63wU3VuOXLFjer2QaZzj4rASGEsmjeY3tI
 Z3wg==
X-Gm-Message-State: APjAAAWzVC23AmBeIuhrUe9e4r9O4/m9FOiqHbCOkuTrzjiWcJd2vK8+
 4clemYL5ALMKCTCXTMQwnirZZ8iR3g72e394XOY=
X-Google-Smtp-Source: APXvYqxVGX9+K7Xz5YfWvC/qL8u+R2fzXeqHac2HeS0SiwVZBa8gOPNuLZONFh1YvGWdr401W9asQoBJ7Yn/hXUPwSg=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr10015636oto.118.1564608365363; 
 Wed, 31 Jul 2019 14:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
In-Reply-To: <20190730213114.GK13948@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 31 Jul 2019 23:25:51 +0200
Message-ID: <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_142607_883008_10C23CD4 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:33 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Tue, Jul 30, 2019 at 09:05:22PM +0000, Mario.Limonciello@dell.com wrote:
> > > -----Original Message-----
> > > From: Keith Busch <kbusch@kernel.org>
> > > Sent: Tuesday, July 30, 2019 2:20 PM
> > > To: Kai-Heng Feng
> > > Cc: Limonciello, Mario; rjw@rjwysocki.net; keith.busch@intel.com; hch@lst.de;
> > > sagi@grimberg.me; linux-nvme@lists.infradead.org; linux-pm@vger.kernel.org;
> > > linux-kernel@vger.kernel.org; rajatja@google.com
> > > Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> > > suspend" has problems
> > >
> > >
> > > [EXTERNAL EMAIL]
> > >
> > > On Wed, Jul 31, 2019 at 02:50:01AM +0800, Kai-Heng Feng wrote:
> > > >
> > > > Just did a quick test, this patch regress SK Hynix BC501, the SoC stays at
> > > > PC3 once the patch is applied.
> > >
> > > Okay, I'm afraid device/platform quirks may be required unless there are
> > > any other ideas out there.
> >
> > I think if a quirk goes in for Rafael's SSD it would have to be a quirk specific to this
> > device and FW version per the findings on KH checking the same device with the
> > older FW version.
>
> That's fine, we have the infrastructure in place for fw specific quirks.
> See drivers/nvme/host/core.c:nvme_core_quirk_entry

A couple of remarks if you will.

First, we don't know which case is the majority at this point.  For
now, there is one example of each, but it may very well turn out that
the SK Hynix BC501 above needs to be quirked.

Second, the reference here really is 5.2, so if there are any systems
that are not better off with 5.3-rc than they were with 5.2, well, we
have not made progress.  However, if there are systems that are worse
off with 5.3, that's bad.  In the face of the latest findings the only
way to avoid that is to be backwards compatible with 5.2 and that's
where my patch is going.  That cannot be achieved by quirking all
cases that are reported as "bad", because there still may be
unreported ones.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
