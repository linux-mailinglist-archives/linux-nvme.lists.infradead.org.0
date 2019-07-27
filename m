Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E752778CD
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 14:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtsXTDuMzSv1JrTspNG7XCQnYs/CTDzXHxwboxhEKVM=; b=aDL2O7jRj5diLP
	hsCtUHs2UiicendUXvT7nBfOBuSbRGuoywkAdAU6SIEBoCc2dFQhCE48gdNgHyqd5e2BLjXh0jUkZ
	SjaEYC/SWzWzLudcLLngkO8OH9e3aJs+i7rbCiQAqtf4YlW8uMApz8bIKkoFpGJe3SQlUzE+YO6JA
	m58NRpQKGtxBiDzuAVtVvLvhSKhuCNUREZjhsMixQHyH0hD76/wlILt3hUxetd9+x98mTVwBvGw1C
	l/uqRFxSi13LfArAEJeay+1pbLBk2zAmC8PEtIx1HU9JZ3kCFmVRuoi6Vxum69qVFQbLGFFlwyeje
	nIdiY5Z64UdLsMgY/Wkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrMEP-0007zH-5j; Sat, 27 Jul 2019 12:55:25 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrMEI-0007yo-Vy
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 12:55:21 +0000
Received: by mail-ot1-f45.google.com with SMTP id d17so58104679oth.5
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 05:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mYB+RjZcYLykoUihvv7WfT1+n77aCY+3wlgKPlvm/4U=;
 b=WJ8+xMlB0+6SiSljD5nQ/G6dtf1nhGW/X5nwxqq2bpdKz237EI6vB0lsN8tla6pPCQ
 rkTknZMoHalk+1/IzpXoRJWwIxPFJvPtSoO/FqEogcfIx3bsUyE1LommOZgz9/veOsWr
 VoBC0qtmpf3dYa2fPyitUUCHnizd4rKxxooSDQyQ7/Qh/OTF6P6bjZUBSLI/bO0DGB0E
 JiAsmxhY+gZ9sSrKra7QMtXBLWdOUq+q8JipnrE1nRlJrryc83ErCfr317d6gglUCAYA
 yM6oyLwmknsG6uvFNSxUbmz0G5/v6l4iJFkCugGD+wzcx1diKxUOFiT5Dx4Yvl175+Wj
 E2oA==
X-Gm-Message-State: APjAAAXl/CHhUmZvkntffmbywmkXGOJI+v2RBFnDISsG98FqEjcrXWsE
 DE7z5YFGZc0pBukswfD7cZJagy2kbIN/vtvQKds=
X-Google-Smtp-Source: APXvYqyeCupN68o5IDANCONQioST/jWzm+ZCSqIdammMjKTD8zYEU4lf98oZYMw1Wj54n2rFP2reNc+PRrSsy2fUGXc=
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr68774265otp.189.1564232117536; 
 Sat, 27 Jul 2019 05:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <2332799.izEFUvJP67@kreacher> <2428826.VBuqOhikiK@kreacher>
 <20190725195258.GA7307@localhost.localdomain> <15043168.halW6uqc8m@kreacher>
 <D33632F4-E119-4833-816C-79084DA03DE4@canonical.com>
In-Reply-To: <D33632F4-E119-4833-816C-79084DA03DE4@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 27 Jul 2019 14:55:05 +0200
Message-ID: <CAJZ5v0imsVS-eDB+Lmd5qzAfmb0UpJ5AwV_Vf+v8D21KAtqTOg@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_055519_032355_A601D202 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.45 listed in wl.mailspike.net]
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
 LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 4:03 PM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> at 04:02, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>
> > On Thursday, July 25, 2019 9:52:59 PM CEST Keith Busch wrote:
> >> On Thu, Jul 25, 2019 at 09:48:57PM +0200, Rafael J. Wysocki wrote:
> >>> NVME Identify Controller:
> >>> vid     : 0x1c5c
> >>> ssvid   : 0x1c5c
> >>> sn      : MS92N171312902J0N
> >>> mn      : PC401 NVMe SK hynix 256GB
> >>> fr      : 80007E00
> >>> rab     : 2
> >>> ieee    : ace42e
> >>> cmic    : 0
> >>> mdts    : 5
> >>> cntlid  : 1
> >>> ver     : 10200
> >>> rtd3r   : 7a120
> >>> rtd3e   : 1e8480
> >>> oaes    : 0x200
> >>> ctratt  : 0
> >>> oacs    : 0x17
> >>> acl     : 7
> >>> aerl    : 3
> >>> frmw    : 0x14
> >>> lpa     : 0x2
> >>> elpe    : 255
> >>> npss    : 4
> >>> avscc   : 0x1
> >>> apsta   : 0x1
> >>> wctemp  : 352
> >>> cctemp  : 354
> >>> mtfa    : 0
> >>> hmpre   : 0
> >>> hmmin   : 0
> >>> tnvmcap : 0
> >>> unvmcap : 0
> >>> rpmbs   : 0
> >>> edstt   : 10
> >>> dsto    : 0
> >>> fwug    : 0
> >>> kas     : 0
> >>> hctma   : 0
> >>> mntmt   : 0
> >>> mxtmt   : 0
> >>> sanicap : 0
> >>> hmminds : 0
> >>> hmmaxd  : 0
> >>> nsetidmax : 0
> >>> anatt   : 0
> >>> anacap  : 0
> >>> anagrpmax : 0
> >>> nanagrpid : 0
> >>> sqes    : 0x66
> >>> cqes    : 0x44
> >>> maxcmd  : 0
> >>> nn      : 1
> >>> oncs    : 0x1f
> >>> fuses   : 0x1
> >>> fna     : 0
> >>> vwc     : 0x1
> >>> awun    : 7
> >>> awupf   : 7
> >>> nvscc   : 1
> >>> acwu    : 7
> >>> sgls    : 0
> >>> mnan    : 0
> >>> subnqn  :
> >>> ioccsz  : 0
> >>> iorcsz  : 0
> >>> icdoff  : 0
> >>> ctrattr : 0
> >>> msdbd   : 0
> >>> ps    0 : mp:6.00W operational enlat:5 exlat:5 rrt:0 rrl:0
> >>>           rwt:0 rwl:0 idle_power:- active_power:-
> >>> ps    1 : mp:3.80W operational enlat:30 exlat:30 rrt:1 rrl:1
> >>>           rwt:1 rwl:1 idle_power:- active_power:-
> >>> ps    2 : mp:2.40W operational enlat:100 exlat:100 rrt:2 rrl:2
> >>>           rwt:2 rwl:2 idle_power:- active_power:-
> >>> ps    3 : mp:0.0700W non-operational enlat:1000 exlat:1000 rrt:3 rrl:3
> >>>           rwt:3 rwl:3 idle_power:- active_power:-
> >>> ps    4 : mp:0.0070W non-operational enlat:1000 exlat:5000 rrt:3 rrl:3
> >>>           rwt:3 rwl:3 idle_power:- active_power:-
> >>
> >> Hm, nothing stands out as something we can use to determine if we should
> >> skip the nvme specific settings or allow D3. I've no other ideas at the
> >> moment for what we may check.
> >
> > Well, do ASPM settings matter here?
>
> Seems like it's a regression in the firmware.
>
> The issue happens in version 80007E00 but not version 80006E00.

So you mean the NVMe firmware, to be entirely precise.

> I am not sure how to downgrade it under Linux though.

Me neither.

> The firmware changelog [1] is very interesting:
> - Improves the performance of the solid-state drive (SSD) by distributing
> power into the SSD efficiently according to the power state of the system.
>
> [1]
> https://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverid=mcxm8

Huh.

It looks like something else prevents the PCH on my 9380 from reaching
the right state for S0ix, though.  I still need to find out what it
is.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
