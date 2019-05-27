Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96262ADDE
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 07:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/ZzEoiPz0cNzwrC4b0zuDcz/l8lZq5mNSCTbtqEFJ8=; b=bw4E+1wtLCPunO
	voMSlq2kkza2ftKNZGxuwoFG5u2YqNvvZn8FrZJyuyKutsbbFJMSgyL7Wr+gYa3X4nZGdUjuY7kf4
	daTcLHGLhsBRc1+X0AeUfBcr4f0yrIuqgHm/yfU2ozuL+Zmq+IffjJjJhabV8VNMavKJlTqXkrqVZ
	iMoRE1Hc/NYdzlyw5FfvaUToStGiJZHgbj6S1hmEZJ18yptZ3us4u/lyDTClKY5drvzT0yW7FK2+p
	J/Fq7dGYzq2IBrYYh3sDqjVBUSJ3AY1Kp5rBONebFecpechHSqYm/49A2U+ZjHbl47j/dYUIkJlgL
	8XNR3h/N9CaOhsaR9aeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7p2-0004YE-2O; Mon, 27 May 2019 05:05:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7ov-0004Xa-U7
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 05:05:15 +0000
Received: by mail-pg1-x542.google.com with SMTP id w34so3725120pga.12
 for <linux-nvme@lists.infradead.org>; Sun, 26 May 2019 22:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JY486E8PGJWKWkDzT35JO/aFGw0u/y4cMrISL8G7SiI=;
 b=e+sgTaqmgpIBRmWtET4glSQF165Wk544BQcEqVp4WtWFyv2OkARbIjerd4Ze9WHx/I
 h9cK3ig76pnwS2jzEHpgNdtyzqRrdtCudPxDwtKrZLyOhVqylkTEtAksSCNuF9pNNrJn
 a5tv4Ek4TPJG/q4hF+12N+t2j+3TejNuke2fCW9eqTqXivZoDNlKreWbaya/ZzgJdft2
 nYwc66Uhq1E+1r+17s6dwPEVLdsvbon1kEks3eP/b7Icg5QIu+NFcBtH6C/cveB/sevX
 rzdinQqYn0OPR9eWl8o/NOV2MVQUn5VK75560uEtl3oLvRFSrkSV4hX1WE3Mts2TPyMm
 9l4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JY486E8PGJWKWkDzT35JO/aFGw0u/y4cMrISL8G7SiI=;
 b=NSVjq2eRTdBDpP9CnQrgn5euApz4sYDM8D655sVov8j+F+Vsgp5Qr5NrHw3BKj0HO/
 743zYeCHG8F2BCUf3OiotWQeD8uMlU3fXBap9SNnOZ61NEaqzMldCMXXspk/vkhnEru4
 j5hQ7Ec9LROEqPmGPJjfOCsORHZ4Y/1xe7PjStrzNojRwwmgT+/NkXY7PWRsOW1QYQdd
 ZD2xkPM8XAXBtTepyNYlZOtOCuzs/1FlumLe147EPzjM+bk//wP+fCvwj9gLPthfwkPA
 oxTACoqSzxwYn2HAVSvx1iiBfBmPrUkJt92eheUNBQGFj3pCCW2U3gO26yQHhYuuFM42
 X41A==
X-Gm-Message-State: APjAAAVzyNz+UZ6vm/ZOk2TELvmx13WP2HHVxOOByu1sD5W2f64KQw32
 SPgMLAh1NFwxETrc+OqpXzu6LkRiiB8=
X-Google-Smtp-Source: APXvYqwnRVUWM7Dvzv93+LuWAsxZBNeEIH1cikRCsgl3I6Pf6AabCTGnlsLcEHMq8RjcVWXH2D2osg==
X-Received: by 2002:a63:d345:: with SMTP id u5mr117572028pgi.83.1558933512643; 
 Sun, 26 May 2019 22:05:12 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p64sm11205646pfp.72.2019.05.26.22.05.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 22:05:11 -0700 (PDT)
Date: Mon, 27 May 2019 14:05:09 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH 1/2] nvme-cli: don't try to disconnect for ctrl with pcie
 transport
Message-ID: <20190527050508.GA933@minwooim-desktop>
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
 <20190516172350.11864-2-minwoo.im.dev@gmail.com>
 <DM6PR04MB452155C6620AF9B2BF47B093860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR04MB452155C6620AF9B2BF47B093860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_220514_020823_0D14EB99 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-16 23:08:31, Chaitanya Kulkarni wrote:
> Looks good.
> 
> Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> 
> On 5/16/19 10:24 AM, Minwoo Im wrote:
> > If a host system has both pcie and fabrics controllers, the following
> > nvme-cli disconnect-all command will might not be working because
> > contrlller with pcie transport does not have delete_controller in sysfs.
> 
> Can we please move following block of the output into the comment(not
> sure if that is the right name)
> 
> of the patch section ? i.e. after signoff... line. This can be done at
> the merge time also.

Chaitanya,

Sorry for lately response here.  I don't get what you really mean here.
Could you please explain why should we move the following output lines
to after --- blocks ?

> 
> ---
> 
> output
> 
> ---
> 
> fabrics.c | 2 ++
> 
> >
> > root@target:~# nvme list
> > Node             SN                   Model                                    Namespace Usage                      Format           FW Rev
> > ---------------- -------------------- ---------------------------------------- --------- -------------------------- ---------------- --------
> > /dev/nvme0n1     foo                  QEMU NVMe Ctrl                           1         536.87  MB / 536.87  MB    512   B +  0 B   1.0
> > /dev/nvme1n1     b92326b9b2323bf0     Linux                                    1         134.22  MB / 134.22  MB    512   B +  0 B   5.1.0-rc
> > /dev/nvme2n1     65fa04eddd9bbac0     Linux                                    1         134.22  MB / 134.22  MB    512   B +  0 B   5.1.0-rc
> >
> > root@target:~/nvme-cli.git# nvme disconnect-all
> > Failed to open /sys/class/nvme/nvme0/delete_controller: No such file or directory
> >
> > This patch checks the transport type of the controller in iteration.
> >
> > Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> > ---
> >  fabrics.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/fabrics.c b/fabrics.c
> > index 511de06..733a24b 100644
> > --- a/fabrics.c
> > +++ b/fabrics.c
> > @@ -1196,6 +1196,8 @@ int disconnect_all(const char *desc, int argc, char **argv)
> >  
> >  		for (j = 0; j < subsys->nctrls; j++) {
> >  			struct ctrl_list_item *ctrl = &subsys->ctrls[j];
> > +			if (!strcmp(ctrl->transport, "pcie"))
> 
> I didn't looked into the case but it is safe to use strcasecmp()? if you
> are sure strcmp()
> 
> will do the job, please disregard this comment.

strcmp() is enough to go here :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
