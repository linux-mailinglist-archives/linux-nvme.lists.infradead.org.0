Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CD0199A4E
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 17:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj21EpZwfrb9HZEsGMHytCW8xfdP6fWCPfdUqdjgNNY=; b=smW1mX+CzC8k+u
	ChIAnLzwB8nv+MqBMxKP/aKNg6HysdSn23jM6rE61NtYAcSHoHvBnDXZgWqk5jU1X//7CZozrkFxc
	OO7/BdUGZ3vxRW52SZ6noY/fsF9Ys7/Gtod9J/10XLTftWzjjw2u1+zsSA3llRVPqhPIS3I/fgC5u
	1fLqX1HT1Nw0kSA+1NBTluxx/kthM8bd3wrvLpwUULzmAW2JyF9/XkHcnFtp/Tsmq0FaxqJ/5i4HF
	AONLDIPNDL52jfkOaVHxvl3RCaMy6ZBvUoFSuezSpu06kVoTQocCkr1Yl/2EmXpq8LgROJ+3NCzTN
	zhmj6e+NCHulm0azwOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJBH-0002hS-LD; Tue, 31 Mar 2020 15:51:59 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJB1-0002cv-1R
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 15:51:44 +0000
Received: by mail-qk1-x742.google.com with SMTP id h14so23518148qke.5
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 08:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Cw3Eh01JFPi8BMIikV3NbP3KCc0IWLFrVC/r+JOBGd8=;
 b=qr5/dccWdp9TcfXD7AQm7YO7pfp2jr9W5meVcYfS3ee7ORl14fhtMqp24mEz3V//yV
 oCvp/JGHSpVTWxB15h0c4Tw4O8c1eid8vCrasK7pLmAxllaXl7JMxoiUl1ZOaAqtK57r
 UMthNrTT0vql6RAOKLEgwD7eh66Fi4BszDDk6REcQ0sqcE7dN72eZLVR7G7/5UzmKZba
 OmLFFwYl+GFCNz04bRJLRvd1MTzSsngAaRY0p5NnLVAkllK4quqmspn/6m+08ObMrl/E
 W3tgCwzmxzN6zKhpLMiWVQkk5u4DBqjeRqjREusjH7t5/6gJ0PyqmnXM9Cg8igKeYqAI
 odmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=Cw3Eh01JFPi8BMIikV3NbP3KCc0IWLFrVC/r+JOBGd8=;
 b=gTFn6azGGdjEjzazk7vh45o5STVec2mNrmsSPRY2xnmy5ifmMFGAQHBhR/gYV5vPAW
 xot//pDTpQksLdUrKXbJZFjAaeACElGPskUbBNrpt9RJO5odrACz51KlQa/JmbGIDc9d
 xEmTRoehK9v4q0dfjByB0G8PWIzqTC3SZXWtqWSUTbaKcLGywsNECUa484+Wdyza3FoM
 Ef3DSHXNkwsU9rAEvw9+S+f5gftThwvhRL88ZjHP93X6e0kYBKQbVXs8Hi7va8gxZS06
 Mc9liAEolkXpBe/pC0YXtcJhPelmjqfVIMfuCzZ2+PwMkYOYeVr3/bllSAuSyu1ebf6F
 LkDw==
X-Gm-Message-State: ANhLgQ0xM44zDirwKFaLOphcFgSM+6yzvuANxFSDS7pfIPd0S5Ka037R
 RV3NvsAjkX+rdnOuLjMhec8=
X-Google-Smtp-Source: ADFU+vseiSMDCCMUSqV42NlgSPKMidOk1UFamFIexPEWiz7tGJMgVKMgaJDPmj7yocflFhcqlI5dWw==
X-Received: by 2002:a05:620a:a86:: with SMTP id
 v6mr5450463qkg.156.1585669901806; 
 Tue, 31 Mar 2020 08:51:41 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::b946])
 by smtp.gmail.com with ESMTPSA id o13sm14130529qtk.12.2020.03.31.08.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 08:51:41 -0700 (PDT)
Date: Tue, 31 Mar 2020 11:51:39 -0400
From: Tejun Heo <tj@kernel.org>
To: Weiping Zhang <zwp10758@gmail.com>
Subject: Re: [PATCH v5 0/4] Add support Weighted Round Robin for blkcg and nvme
Message-ID: <20200331155139.GT162390@mtj.duckdns.org>
References: <cover.1580786525.git.zhangweiping@didiglobal.com>
 <20200204154200.GA5831@redsun51.ssa.fujisawa.hgst.com>
 <CAA70yB5qAj8YnNiPVD5zmPrrTr0A0F3v2cC6t2S1Fb0kiECLfw@mail.gmail.com>
 <CAA70yB62_6JD_8dJTGPjnjJfyJSa1xqiCVwwNYtsTCUXQR5uCA@mail.gmail.com>
 <20200331143635.GS162390@mtj.duckdns.org>
 <CAA70yB51=VQrL+2wC+DL8cYmGVACb2_w5UHc4XFn7MgZjUJaeg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA70yB51=VQrL+2wC+DL8cYmGVACb2_w5UHc4XFn7MgZjUJaeg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085143_112942_CE330F1B 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [htejun[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Minwoo Im <minwoo.im.dev@gmail.com>,
 cgroups@vger.kernel.org, Keith Busch <kbusch@kernel.org>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello,

On Tue, Mar 31, 2020 at 11:47:41PM +0800, Weiping Zhang wrote:
> Do you means drop the "io.wrr" or "blkio.wrr" in cgroup, and use a
> dedicated interface
> like /dev/xxx or /proc/xxx?

Yes, something along that line. Given that it's nvme specific, it'd be best if
the interface reflects that too - e.g. through a file under
/sys/block/nvme*/device/. Jens, Christoph, what do you guys think?

> I see the perf code:
> struct fd f = fdget(fd)
> struct cgroup_subsys_state *css =
> css_tryget_online_from_dir(f.file->f_path.dentry,
>         &perf_event_cgrp_subsys);
> 
> Looks can be applied to block cgroup in same way.

Yeah, either fd or ino can be used to identify a cgroup.

Thanks.

-- 
tejun

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
