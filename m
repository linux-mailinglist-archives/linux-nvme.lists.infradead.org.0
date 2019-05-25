Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A2D2A4C6
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 16:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4V9pGebrYMDApm7NSZTlioCwV9SuxorcPkCpJ3PHbY=; b=gBYKyS6UAyAI8C
	XvNYtGj0Hv5MMfnIrimNRAEFDsc1vaoS2+nh1aqU2HukIkwc9ktnXvVL0ZhNJvvehlBYbKyfxZuZH
	2tXYkoUYbAvzlfjK78vmgXj5OpX8vBGQSHDxUJw7nwSMLJmHJftTreRY6Pq19LfuroB/CSasYjdJP
	v43Z/+FucmfUZ152UIsKke/oPeEivJpkiL2Cd4W4h2+8CUMsfPKvh0llS/0UZ596XbVnlfPcjjXyw
	yGsYYKixBN2QeIlsk607F62NLZyT4/SxPT52dSN9KYsvNVvO15wlcwrI4a8f0Ym3KqRKcQPCedY1s
	H9nXuAXGHGQr1z5icH7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUXLH-0006uS-QA; Sat, 25 May 2019 14:08:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUXLC-0006tp-Lx
 for linux-nvme@lists.infradead.org; Sat, 25 May 2019 14:08:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id e2so3835340wrv.6
 for <linux-nvme@lists.infradead.org>; Sat, 25 May 2019 07:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wAvbm9x6md5YGg8yYArixKR25zTjCGeKUm01eWyJAjY=;
 b=LM96nrGiPx+XySa39Jhus5xo+AY2nbZjbbR+h8U9QzYaEKTSlxGRf1/mPmUToDj7zc
 FF6xqeZJVpT33ULFzEx0M0mXAhrzT7X5/KF2zoNoV6W6CfljQm6HaWLc7sN5lnmS0GaP
 YrBZAPk7yFDJt+SO8fAYflTzDLyQwBvRFmKIxwEe2+zVHrr62HSr127vkDwggWtMVGow
 ViVONB+NUCkXuLMEfvbnirF/BNM5MPNZpZQmUKD9/VvrVsRgnNylkna3S2LpbBC0uGs3
 p784e9ePBFYrSnAq9v0QCPyRW2Uz9CHp/q2vo9P9LBGRf4MzxzQsw37f8b0AngF93A1l
 s9yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wAvbm9x6md5YGg8yYArixKR25zTjCGeKUm01eWyJAjY=;
 b=nA8EHWTFYUB1E8mdRM0yRaffMQbu/rpRNqg8uRfHSrGB+NacTntHEaRn5/fv6OAksw
 SUTpUAlQJCvI+HeswPSeOfi3F5BSVuf/HbFThF5tJlvQXypJAhnD3pBN5N3oi4jXqrnZ
 tRHDmlkt6BVlkOqWie8LXBTX7bZ+MYccp/zNM1Sr5s5BCn0UtvrWe7ItW5v601vlYqJ7
 sbf8zsR5DaY8nsz4OO/PsWNzH6eSbcLsiekKooi+McaMy/mvttR/zDq1hCdyC4RXxnnw
 IZaD1LXnc8b6AAREEMdyscqRgxTAMCQ/I/ofgTnudzlWFe0zlpTlAgSi1l5a26Hu55kB
 WJOg==
X-Gm-Message-State: APjAAAXufIgwDUD0ehoQWclAuJtWTv/gqr9fEPv3g9HfhBXUZkRtj61z
 Q5E/6z/God7z8m4fwriPB0WmjT0auU/j2S8gyu8=
X-Google-Smtp-Source: APXvYqwbEKAuATxqvTlno36GvwWkuL6wmlsjfmgagyvQmuzITBOXl6I/EQ3sffSsJug2G5mZpqJchlQuetukWKvhxTM=
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr6342752wrw.306.1558793283266; 
 Sat, 25 May 2019 07:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190524202036.17265-1-keith.busch@intel.com>
 <20190524202036.17265-4-keith.busch@intel.com>
 <20190525131710.GA342@minwooim-desktop>
In-Reply-To: <20190525131710.GA342@minwooim-desktop>
From: Keith Busch <keith.busch@gmail.com>
Date: Sat, 25 May 2019 08:07:59 -0600
Message-ID: <CAOSXXT5QT4q7fbTgs-k50DU87xeidgFoGkJDboY59ypU6ovHzQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] nvme: quiesce admin queue for fw activation
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_070806_743502_DA02C482 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 7:17 AM Minwoo Im <minwoo.im.dev@gmail.com> wrote:
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 96dac2292897..5a6d27823f7f 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -3604,7 +3604,10 @@ static void nvme_fw_act_work(struct work_struct *work)
> >               fw_act_timeout = jiffies +
> >                               msecs_to_jiffies(admin_timeout * 1000);
> >
> > +     dev_info(ctrl->device, "processing paused for fw activation\n");
> >       nvme_stop_queues(ctrl);
> > +     blk_mq_quiesce_queue(ctrl->admin_q);
>
> Keith,
>
> Can we have an warning here to indicate if device firmware has not set
> the CSTS.PP yet.  In that case, the information message that you have
> introduced here may be invalid.  It would be great if we check the
> CSTS.PP first, and then print it out.
>
> If it's not necessary to have it, please feel free to let me know.
> Of course, device has to prepared the processing paused status,
> though :)

Well, between the fw notice AEN and when the work can finally check
CSTS.PP, we really have no way of knowing if the controller paused and
resumed before we observed that controller status, so a warning would
be a bit much. We're still quiescing, so the print is valid.

In case the controller did pause processing, and we hit the unusual
timeout race that does not see CSTS.PP, the new prints make it clear
that's what happened.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
