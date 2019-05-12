Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E0E1ACA1
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 16:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOt5y40wjpR+ZV8WCvyRqZXqImSVyXUvP8iIlVdLb6M=; b=W/rG4l8kAKIU1E
	j4CRGNHJ4xFY+hAKuz7FytxrCN4VyvRN5ZyupJJMKDhqrbllI14+WYEwWk012pjG43vw92i7Xm5sL
	5vQUN6hiRw4yulwlNJpHQuDh+Nx7W87gleiHgBPdqE/NpE3fXIkRZN50X11/tlh+cwTHJJybK+9Y4
	VIiwOLy3Ac6iDJOG4QhWA6Qi33WVQDX0C4qFkgBg/Vw2YRtz0DkTiAWLmKqLaVliUcioZh2GoNUZL
	jh/JTcaOxO5eBrdXEZQyfnBJHRl9TQIQedGFjmkD4NV853I00rB6auIufgXhQ2B3FlL8xck3XbEeG
	BLnZa1iJ1Bcw4KqfBJeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpVM-0004OL-UT; Sun, 12 May 2019 14:31:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpVH-0004Nc-Cp
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 14:31:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id w7so5117867plz.1
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 07:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8MmPir51Pep1QquiMlNrOGRX1Y2TZtpKY9viaAkjkQI=;
 b=rhWhYEal8pAMHfedEvpe/VBQbVlKLqFtXxiQi/XHXYuwxAEt9D0juekW4ZFobDtJXQ
 44oh2TGhUvx6yE/t+ilpT/WGKb0/DTK+h2WOhXvxp8TTaIkkeW+cKK4y7p+dSW7tmY5o
 ktiEfu0TC5Ll2KqXN1KEHgdtYaIzNAohjSs5RsxOiKeOjZjnust9Vn9J3p1V2q5GVsvD
 vJM2pOAkNyUS7obCx76y1hN6YownFya1JANnazvaCz/y3t2hlyUv3z8uSoCOxwFr1Inr
 f3Ef8OXBgVB+ArWaaaLwqXAjynxcN7FgSAr9r8xloN1WhGyu/+2QxvCUMkRMghxMcpoY
 kuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8MmPir51Pep1QquiMlNrOGRX1Y2TZtpKY9viaAkjkQI=;
 b=EY9TvIgv29L9/nDclMQXh8maSY0iHVs3kM/sISP0CzCM7fPxa1TUoElrAT8IYV4Dx8
 21TkjRd/mh1FuYj4zRR1TEbQJCw9l6IjoZl8f0dAxIAIxjjk3Sy6ehGydG7Wh9NQFc0I
 MMQ/wDFKdozKOx/FCkwuD2DhEGnsTwOOLNQs/BTt5ZE4+Bs4ZDKeDtubsewKjrAqqAWh
 dfY0JkK67YaQCsDiMs3d+WzmgVDPVzKMbMiw57HmqNmKc1acw8epimRJdW3D9eZs81w+
 Anfy0pIaMnAkJhANda/Ltl1OFxgl1fkJBDaA2oJvnJw6+BwclP7Rg1GfEbe+2vdif1b0
 43Wg==
X-Gm-Message-State: APjAAAXpyzLek68toCLLZj67skxPgF3nxaik6v/G2NOw5bXc0cAdfdEJ
 BqrZc3RB6ZmvpzACIlN4zBU=
X-Google-Smtp-Source: APXvYqyHv4eu6dOl7ANFLZc88b1efraMSjQavaCvSp5oLIBuxCMPX9SS9p4rYP6iiwoMUxxTzZ0OmQ==
X-Received: by 2002:a17:902:7594:: with SMTP id
 j20mr25677961pll.78.1557671461643; 
 Sun, 12 May 2019 07:31:01 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z187sm15546976pfb.132.2019.05.12.07.31.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 07:31:00 -0700 (PDT)
Date: Sun, 12 May 2019 23:30:58 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190512143056.GA7761@minwooim-desktop>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <SN6PR04MB452735778FD952AA838E78C9860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB452735778FD952AA838E78C9860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (ed9d7727) (2018-07-16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_073103_457985_555BB96A 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 linux-pm <linux-pm@vger.kernel.org>, Rafael Wysocki <rafael@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai Heng Feng <kai.heng.feng@canonical.com>,
 "hange-folder>?" <toggle-mailboxes@minwooim-desktop>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > +	union nvme_result res;
> > +	int ret;
> > +
> > +	if (!result)
> > +		return -EINVAL;
> > +
> > +	memset(&c, 0, sizeof(c));
> > +	c.features.opcode = nvme_admin_get_features;
> > +	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
> > +
> > +	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
> > +			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
> > +	if (ret >= 0)
> > +		*result = le32_to_cpu(res.u32);
> May be add a check for result here in above if before deref pointer :-
> 	if (ret >= 0 && result)
> 

'result' already has been checked in a few lines above.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
