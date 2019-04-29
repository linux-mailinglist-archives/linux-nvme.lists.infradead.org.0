Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8466FED4C
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys5UOoEMoMmTq6QnCpwp1/7G2dFyeeK6YMDfkj0Rsa8=; b=p3cSCrgQOT9HLG
	oMFVO9YILo6UBVGIqWQOeZeEIrzguB/IRzjNlQr+/llDMio6FSsUDwgZhH3pA2ztXxseUOjCIkno1
	lsLnWxORK7qvRRyH8YIDo2/xzYTxQFvvMgCWSGgcN0z9CZkwCXa7683gsEjFcgk86d5RefPbIsZq2
	1BWzK8JCT4/Wrle3l6IYv113UswHBj+EgmpX9D4xTI+Gvj/7qwTP1cmbrCN+zVfOY/LmPTFuh7ZEW
	cDcgzCepAj1QX5EH/bxHWUF5d63oXBBq2Y3qgZRMby7w/2N81n8H6DWHI42fTStsGjKe/hup1UmSC
	GIm5knQZl4RdNIQlLB4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFfz-0002kZ-U0; Mon, 29 Apr 2019 23:27:11 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFfv-0002kC-6N
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:27:08 +0000
Received: by mail-pl1-f193.google.com with SMTP id z8so5823226pln.4
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 16:27:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9W0/OorkYY0tHV85a2K93Hr/3gug/GQF665mYtBGYmo=;
 b=jE8OpvPMH7/F4HqnC7LJI22jK9eAZ8QohZowpXgqV5vC3Vu81N2cVwdQBXEMh6N5FQ
 NhJr/uq31N69kHapABtFEza0CFdEZ49j/6v3Mt7Wifh8bX0eYdxyeuOeZuN2UVEYJRkO
 aOQ2Tj2Q4YgLe5ctsd4za2mrWt1LH2M52+KpBimsDQrLKdX/Ge5dEwZx/BvLaDF4/UQ3
 Pvx9/2g6YcDAgbRrZXMgTvewrJO+8VR7fUt7+byMk9EylCKY/mBtA8MmoXfjJUUZ5GPh
 DUHWZptVlZzYwZAERMdUYevu/JJoOfg/MBPxAoSBB0G0kQdgB2StPhcfi/5Q14Pu63yt
 KemQ==
X-Gm-Message-State: APjAAAX0dG50N5VzR5V/yijbN4gA5JUnBX5LBtNEqEW4R1MXIqimVaJG
 l0YQUoPHYYs4aMcmwW5q6ro=
X-Google-Smtp-Source: APXvYqz/fDlKsjBsnD5EHaOrTqSBakh04fNnnUKJOZlXOMR2DtUCYlE2ltKaeCWUdcGcTHDMfaO02g==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr66541468plb.164.1556580426026; 
 Mon, 29 Apr 2019 16:27:06 -0700 (PDT)
Received: from ?IPv6:2620:15c:2cd:203:5cdc:422c:7b28:ebb5?
 ([2620:15c:2cd:203:5cdc:422c:7b28:ebb5])
 by smtp.gmail.com with ESMTPSA id p66sm68200191pfb.4.2019.04.29.16.27.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 16:27:05 -0700 (PDT)
Message-ID: <1556580424.161891.170.camel@acm.org>
Subject: Re: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
From: Bart Van Assche <bvanassche@acm.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, "Heitke, Kenneth"
 <kenneth.heitke@intel.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Date: Mon, 29 Apr 2019 16:27:04 -0700
In-Reply-To: <SN6PR04MB452783333EA5F5FE1190294886390@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
 <067b8ef5-abea-2bc8-9da5-a39ac3b54a1b@intel.com>
 <SN6PR04MB452783333EA5F5FE1190294886390@SN6PR04MB4527.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.26.2-1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_162707_237153_E25D36E3 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "hare@suse.com" <hare@suse.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-04-29 at 22:12 +0000, Chaitanya Kulkarni wrote:
> On 04/29/2019 10:41 AM, Heitke, Kenneth wrote:
> > 
> > 
> > On 4/28/2019 9:24 PM, Chaitanya Kulkarni wrote:
> > > From: Hannes Reinecke <hare@suse.com>
> > > 
> > > This patch intoduces nvme-ctrl state name array which is used inthe the
> > 
> > s/intoduces /introduces/
> > s/inthe/in the/
> > 
> > > later patch to improve the logging of the ctrl state.
> > > 
> > > Signed-off-by: Hannes Reinecke <hare@suse.com>
> > > Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> > > ---
> > >    drivers/nvme/host/nvme.h | 10 ++++++++++
> > >    1 file changed, 10 insertions(+)
> > > 
> > > diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> > > index 527d64545023..01a36bbafed6 100644
> > > --- a/drivers/nvme/host/nvme.h
> > > +++ b/drivers/nvme/host/nvme.h
> > > @@ -146,6 +146,16 @@ enum nvme_ctrl_state {
> > >    	NVME_CTRL_DEAD,
> > >    };
> > > 
> > > +static const char *const nvme_ctrl_state_name[] = {
> > > +	[NVME_CTRL_NEW]         = "new",
> > > +	[NVME_CTRL_LIVE]        = "live",
> > > +	[NVME_CTRL_ADMIN_ONLY]  = "only-admin",
> > > +	[NVME_CTRL_RESETTING]   = "resetting",
> > > +	[NVME_CTRL_CONNECTING]  = "connecting",
> > > +	[NVME_CTRL_DELETING]    = "deleting",
> > > +	[NVME_CTRL_DEAD]        = "dead",
> > > +};
> > 
> > I haven't been paying attention if this was bought up before but won't
> > this create multiple copies of this data for every source file the
> > includes the header file?
> 
> Yes, we did discuss this.

Hi Chaitanya,

In an e-mail from Christoph I found the following recommendation with regard
to the nvme_ctrl_state_name[] array: "Just keep it near the top of multipath.c."
and you replied "Okay, that works too."

Did I perhaps miss something?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
