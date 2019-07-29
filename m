Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B06A79C2D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 00:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJ2TzvaoilK3ohWEq25kUdu/FJ0V3Jlu0rqKvF/HuVs=; b=EwoUnKtzlFcDpe
	9oE4KV49oUv6V3h2FQZ0A25/f1pQeZU/U90Ca3Exgg7DvEhA1/0l9LuERm86b6szU75JHP3qctE15
	PGxU70skrDksINsktWiRxia/KVlHXstNfO6xBbD2lwSzGqd/mMCHVh/NSmEU/k2K02NphOMtkx2sU
	25t4UgOF3HhNgFa2mCp8QIZ0FbqP+cAzBNXTJwpatImSSUUYHzjouiqwwW1lXygjbWx620QlZzhm/
	6Nc05lPY50S9OvzPqIdcCFPe0Moy7I3gn7Fr2nqx/f31GVv1ewFr6RiTR9CfvGmpEBekgk3uqY2wz
	q0F97Xdtl1z5MWSXIBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDmP-0002qa-Cd; Mon, 29 Jul 2019 22:06:05 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDmF-0002pv-Qe
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 22:05:57 +0000
Received: by mail-ot1-f45.google.com with SMTP id z23so35833276ote.13
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 15:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UEA32fU0I6ytXCKg3XtwmUrMebt1jpdSsOdRBgXgNeM=;
 b=ANvXAjBsjIOlJc96ewxymUW/wdM4z8WtrlE37nECk/cP10zCx7d61rs7KPX1xgs6zr
 54NZTrUt1kIVLI1aHuMMzbPJbUe3Zj6PcAdtEfzsYkhxJtrI7lO2SgokOCE5wPqMaMoE
 g+Bwz46DNdBMyUlCMw6RbWOMBPnO1Zf1mWdVpkLeqgfJagVvTs8lXKhLgI37ZptJDzl7
 Ts01KYIJLYITbyqCnBqlKTu/Xhs2XUkgYm0nr0gCUXX+zOYMiXi6DxsIvjzVQgA/NoZB
 tIGpiKphevv9TdO5AmdsG0fnTpAyUcNABkL6HwnkRLjSCsEHPKZ8ghIrtPWTp8KwgY5q
 dyoA==
X-Gm-Message-State: APjAAAXNAYMGxcD2IczmtMQudj3/tpSJv/MJP2n9zvR+0QGvVqdBRvaQ
 W4DVYJgHZz/+0zy3t1aDXd4oFj06azexQN8fUrg1ow==
X-Google-Smtp-Source: APXvYqy8Yk4N8UHHzj20KAMpPsb/zsAUKO3D/YBaq2Muo+H6UBXNUPih+VuLQB+hmRT5+c/N3COtIY7CD7gYCLOrrgg=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr52930409oto.167.1564437954851; 
 Mon, 29 Jul 2019 15:05:54 -0700 (PDT)
MIME-Version: 1.0
References: <2332799.izEFUvJP67@kreacher> <2428826.VBuqOhikiK@kreacher>
 <20190725195258.GA7307@localhost.localdomain> <15043168.halW6uqc8m@kreacher>
 <D33632F4-E119-4833-816C-79084DA03DE4@canonical.com>
 <CAJZ5v0imsVS-eDB+Lmd5qzAfmb0UpJ5AwV_Vf+v8D21KAtqTOg@mail.gmail.com>
 <868a042a9422463fa1166653982bb985@AUSX13MPC105.AMER.DELL.COM>
In-Reply-To: <868a042a9422463fa1166653982bb985@AUSX13MPC105.AMER.DELL.COM>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 30 Jul 2019 00:05:43 +0200
Message-ID: <CAJZ5v0gibD_oboFt7x7VjUTe4mw+mZxHcOiFEEcWdw8dUZ5RXw@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Mario Limonciello <Mario.Limonciello@dell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_150555_862643_BFF7CB78 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Sagi Grimberg <sagi@grimberg.me>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 5:53 PM <Mario.Limonciello@dell.com> wrote:
>
> > -----Original Message-----
> > From: Rafael J. Wysocki <rafael@kernel.org>
> > Sent: Saturday, July 27, 2019 7:55 AM
> > To: Kai-Heng Feng
> > Cc: Rafael J. Wysocki; Keith Busch; Busch, Keith; Christoph Hellwig; Sagi Grimberg;
> > linux-nvme@lists.infradead.org; Limonciello, Mario; Linux PM; LKML
> > Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> > suspend" has problems
> >
> >
> > [EXTERNAL EMAIL]
> >
> > On Fri, Jul 26, 2019 at 4:03 PM Kai-Heng Feng
> > <kai.heng.feng@canonical.com> wrote:
> > >
> > > at 04:02, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > >
> > > > On Thursday, July 25, 2019 9:52:59 PM CEST Keith Busch wrote:
> > > >> On Thu, Jul 25, 2019 at 09:48:57PM +0200, Rafael J. Wysocki wrote:
> > > >>> NVME Identify Controller:
> > > >>> vid     : 0x1c5c
> > > >>> ssvid   : 0x1c5c
> > > >>> sn      : MS92N171312902J0N
> > > >>> mn      : PC401 NVMe SK hynix 256GB
> > > >>> fr      : 80007E00
> > > >>> rab     : 2
> > > >>> ieee    : ace42e
> > > >>> cmic    : 0
> > > >>> mdts    : 5
> > > >>> cntlid  : 1
> > > >>> ver     : 10200
> > > >>> rtd3r   : 7a120
> > > >>> rtd3e   : 1e8480
> > > >>> oaes    : 0x200
> > > >>> ctratt  : 0
> > > >>> oacs    : 0x17
> > > >>> acl     : 7
> > > >>> aerl    : 3
> > > >>> frmw    : 0x14
> > > >>> lpa     : 0x2
> > > >>> elpe    : 255
> > > >>> npss    : 4
> > > >>> avscc   : 0x1
> > > >>> apsta   : 0x1
> > > >>> wctemp  : 352
> > > >>> cctemp  : 354
> > > >>> mtfa    : 0
> > > >>> hmpre   : 0
> > > >>> hmmin   : 0
> > > >>> tnvmcap : 0
> > > >>> unvmcap : 0
> > > >>> rpmbs   : 0
> > > >>> edstt   : 10
> > > >>> dsto    : 0
> > > >>> fwug    : 0
> > > >>> kas     : 0
> > > >>> hctma   : 0
> > > >>> mntmt   : 0
> > > >>> mxtmt   : 0
> > > >>> sanicap : 0
> > > >>> hmminds : 0
> > > >>> hmmaxd  : 0
> > > >>> nsetidmax : 0
> > > >>> anatt   : 0
> > > >>> anacap  : 0
> > > >>> anagrpmax : 0
> > > >>> nanagrpid : 0
> > > >>> sqes    : 0x66
> > > >>> cqes    : 0x44
> > > >>> maxcmd  : 0
> > > >>> nn      : 1
> > > >>> oncs    : 0x1f
> > > >>> fuses   : 0x1
> > > >>> fna     : 0
> > > >>> vwc     : 0x1
> > > >>> awun    : 7
> > > >>> awupf   : 7
> > > >>> nvscc   : 1
> > > >>> acwu    : 7
> > > >>> sgls    : 0
> > > >>> mnan    : 0
> > > >>> subnqn  :
> > > >>> ioccsz  : 0
> > > >>> iorcsz  : 0
> > > >>> icdoff  : 0
> > > >>> ctrattr : 0
> > > >>> msdbd   : 0
> > > >>> ps    0 : mp:6.00W operational enlat:5 exlat:5 rrt:0 rrl:0
> > > >>>           rwt:0 rwl:0 idle_power:- active_power:-
> > > >>> ps    1 : mp:3.80W operational enlat:30 exlat:30 rrt:1 rrl:1
> > > >>>           rwt:1 rwl:1 idle_power:- active_power:-
> > > >>> ps    2 : mp:2.40W operational enlat:100 exlat:100 rrt:2 rrl:2
> > > >>>           rwt:2 rwl:2 idle_power:- active_power:-
> > > >>> ps    3 : mp:0.0700W non-operational enlat:1000 exlat:1000 rrt:3 rrl:3
> > > >>>           rwt:3 rwl:3 idle_power:- active_power:-
> > > >>> ps    4 : mp:0.0070W non-operational enlat:1000 exlat:5000 rrt:3 rrl:3
> > > >>>           rwt:3 rwl:3 idle_power:- active_power:-
> > > >>
> > > >> Hm, nothing stands out as something we can use to determine if we should
> > > >> skip the nvme specific settings or allow D3. I've no other ideas at the
> > > >> moment for what we may check.
> > > >
> > > > Well, do ASPM settings matter here?
> > >
> > > Seems like it's a regression in the firmware.
> > >
> > > The issue happens in version 80007E00 but not version 80006E00.
> >
> > So you mean the NVMe firmware, to be entirely precise.
>
> Yes.
>
> >
> > > I am not sure how to downgrade it under Linux though.
> >
> > Me neither.
>
> I'll ask the storage team to ask Hynix to make both these FW available on LVFS.
> Fwupd can upgrade and downgrade firmware when the binaries are made available.
>
> They could potentially be pulled directly out of the Windows executables too, but I don't
> know how to identify them myself.

Well, thanks, but I'm not quite convinced that the NVMe is the reason
why my 9380 cannot reach SLP_S0 and this is my production system, so
I'd rather not do NVMe firmware downgrade experiments on it. :-)



>
> >
> > > The firmware changelog [1] is very interesting:
> > > - Improves the performance of the solid-state drive (SSD) by distributing
> > > power into the SSD efficiently according to the power state of the system.
> > >
> > > [1]
> > >
> > https://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverid=m
> > cxm8
> >
> > Huh.
> >
> > It looks like something else prevents the PCH on my 9380 from reaching
> > the right state for S0ix, though.  I still need to find out what it
> > is.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
