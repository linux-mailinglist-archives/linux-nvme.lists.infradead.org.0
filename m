Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7828684A27
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 12:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuXEhr+Nrxt3pHsg/5xPMCpeEVcmKIBpQXqaAQzOg2I=; b=ccAS8iJEgyJ2bN
	aEaY2GMjBr+76/kK2EANDJmD6o0R0rzi/z06J190fAkwJo85uYF+Nafwi4T7jkZCzLpyncide/ZPH
	Tk+ltBCPUWfC1oeRGmOEEBpPu6FH2+dGnzWDm21q9400C1r7vYeQnRNDerZMBdTbbOsAK4rQyNqFy
	yq41ViJsCSKyri9y2TPHLtIxPKVwLIGDbz6CkugK0WSnmrS/LWm29bqyCQjMFvwjd72hG5F1ZfBjb
	xPOR6HXrs9nDdrQJ4gXci4SMTUvDRQ4Tj0/6jI3Mq+wdjT5UpX/XA9RfRGzMn4JNbvLdewXi4z9wP
	t59lwlJt2iQ66Uac+tQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJaP-0004b6-IA; Wed, 07 Aug 2019 10:54:29 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJaH-0004ae-4b
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 10:54:22 +0000
Received: by mail-ot1-f68.google.com with SMTP id d17so102562639oth.5
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 03:54:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xxw3EVVU0xzOlP4s3CysSd2AtPlOWNcCQsYcbdOHfjQ=;
 b=bBuJ/1GxYqeyUugbFuwburisdndVBK6bAeV0D4GDYs8Rz8xMoKlnHbzjMlp2+5kE+7
 N1GrdGZuoHT5FkQyMaXmeiT7ExfqK5xlQQlgn8BGBhFGfGo+/D8RmUCgkhr82+/VKmbM
 vvHZpdNk1w0ZH65cNlVL/OACYMXeBayFbi442/25wU+QZmmaHPT7PxSAccd080nMbnY6
 iRBASc0GOIjasnlBH1E3pFbKMWKZjAxXD9uSQ+h1LH3TqZ54Amz8PQ5ndthDrWh49WGJ
 +ExEPckXhRE8BMbDrGG55VZXgIlZ6jfx3wQ6cFkWHrFWIZThfTjvYiXYnUw168VO3Zma
 XRfA==
X-Gm-Message-State: APjAAAXzQIdceFTTvuviaFZFcCqR0uDFvA3fEiyqPV2NHCwXWuNoQdcz
 Nogk72qHBuacAFNOp0emRCoaH1zoyZf14mRjS94=
X-Google-Smtp-Source: APXvYqxDuPzwIiSna5umdxZjXPi87WcSCTODOBv6ItZIqSnL3x2U+otA38McqxhlujmUrNjhLhaVyLy2i5tERoxxacU=
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr6970595otp.189.1565175259873; 
 Wed, 07 Aug 2019 03:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain> <2763495.NmdaWeg79L@kreacher>
 <20190807104500.GB11356@lst.de>
In-Reply-To: <20190807104500.GB11356@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 7 Aug 2019 12:54:08 +0200
Message-ID: <CAJZ5v0hsLqugkep9JTzUpErUoBdFbEqmHEXqSzdfPk8D1ZvHdg@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035421_184754_62BAB9A3 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 12:45 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Aug 07, 2019 at 11:48:33AM +0200, Rafael J. Wysocki wrote:
> > So I think I know what the problem is here.
> >
> > If ASPM is disabled for the NVMe device (which is the case on my machine by default),
> > skipping the bus-level PM in nvme_suspend() causes the PCIe link of it to stay up and
> > that prevents the SoC from getting into deeper package C-states.
> >
> > If I change the ASPM policy to "powersave" (through the module parameter in there),
> > ASPM gets enabled for the NVMe drive and I can get into PC10 via S2Idle with plain 5.3-rc3.
> >
> > However, that's a bit less than straightforward, so I'm going to post a patch to make
> > nvme_suspend() fall back to the "old ways" if ASPM is not enabled for the target device.
>
> Sounds sensibel.
>
> FYI your mail is not properly formatted and has way too long lines.

Sorry about that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
