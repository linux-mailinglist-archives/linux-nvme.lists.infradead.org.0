Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3B5638DA
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 17:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXNslQDu+wfsWPlJvFQNkmVwzCIUB5wX6TFN1oEIeMQ=; b=AoUKvOOAz7W4aI
	SKiU97NE2xI21d0x3YcrQkz5cnKMeQWnpRIpwFL8BkgqwE2Ohyt+fEkTMXyhFPszyvuEkn13MUbGr
	JTvilksMlhpEE31kkx6G4qIsiTicra1/YUbKVzsa0mkuPiRPkWn4tY1JZYW5uqi0jnaIv8ePGrlWf
	DUMc/FmrAXq9Yujf4DX3xKnpY5pUb4Ts8dWhhXFdC0rO+x2axdTKZCq+pRjijKwGwgyvI6efJJ0bH
	FRMrYNGy4ZK6zrdsOSrZ2frjxZeRbiGK9Ytmv03K+oCl+kPeZIIH0AK9CZtkLpeOoJ67vfMDTp465
	gXvLOijfbKhMGIJAUvrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksLX-0002oC-Rv; Tue, 09 Jul 2019 15:47:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hksLL-0002no-Er
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 15:47:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so9488274pff.8
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 08:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vPsLQFWWdwuLT/EXeyCmhPkawl4nkAU4Krobq8uGgrs=;
 b=bk+gExtY5KXmN3dzlN2Yq8aFP7kyt9sFr5YN+mIkX4OG/0RQQdwdakgYtv0nFUrrBR
 r29ckaz4uGXMUqM4/HnENEesr7tELQlfHm46/Cc3PsCiX1cGdNpgngWy7uIyx/iqxYIY
 nn8jGdza5xSXRnkdCUbImcnZvxmxhG37F5AUjQVs+Jc9OGxTbQ5wwyo1q5GgHRgOaO28
 KcyVVjdc/hJlHyeGSfEggwkVyKfB86DWnErROZ4hmidWQ1BoLyz4zU+Q+tNQzqezmeQ7
 VvzTZPtcK9i84ecXPQ3hDYxCNCQAUmQDTqagHkDHie/3zq6RI4GzktRTp/ITwd0e2gyV
 NkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vPsLQFWWdwuLT/EXeyCmhPkawl4nkAU4Krobq8uGgrs=;
 b=jel83u2qA/iMZbN6VIdzSQ850SSpYGGjkWGgn/l87w978qh6mWGLN7P/EtQBOYgzxU
 U22lamDGRmNvkNAm5Mun1lp8JNcZh5EKAKymXxOVJ/96QEGZphFtubrNOwkLfGML5KrN
 28uW6mRlaCNRVeCvooqisfMsY+VAVzzKrFi/WkbExkxviNd+ASegm9Fqw0FztXp4O2rz
 1RcC5Q06WhsvEXUkWmOhAxC06jCiN44bLdWDoEEOKK0rHC4qxqG3C8WKtwx8ZUEw01Zg
 T3YI9AvVitpkNjrYMZzGUPiAa1gyNmviy3uYpPVBfyEG0yAL61JeBYzqW9CNc2DODEXP
 wC/g==
X-Gm-Message-State: APjAAAU00b8VsbAOjZvP85ZY9rs9FoKCpALJJLE1edu44NMeOMuUQ8EU
 /nYnlYKk43ONLBY8dEOoJNSFUK+4RlQ=
X-Google-Smtp-Source: APXvYqySlXe4BuiJDr/Eb2xWDmP5It5JN67+wAv2E3nWRWU0bTh2DXTmvsN23Ccq+3u+SjHeeOPgEQ==
X-Received: by 2002:a17:90a:77c5:: with SMTP id
 e5mr737241pjs.109.1562687266120; 
 Tue, 09 Jul 2019 08:47:46 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p27sm36675557pfq.136.2019.07.09.08.47.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 09 Jul 2019 08:47:45 -0700 (PDT)
Date: Wed, 10 Jul 2019 00:47:43 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
Message-ID: <20190709154743.GA16207@minwoo-desktop>
References: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
 <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_084747_525226_9DED7EE9 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-08 08:09:38, Bart Van Assche wrote:
> If Linux users want to figure out which code reported an error message they
> sometimes run grep over the Linux kernel source code. Seeing the above
> message makes me wonder whether enough context information is provided to
> allow users to figure out unambiguously which code reported the error
> message? Have you considered to include the function name in the error
> message?

Bart,

I can see some pr_err() with __func__ being printed out in other drivers,
but I just wonder if error messages with the function name itself have
been a tradition for the linux kernel project.

Is there somewhere to find out these kind of standard or something?  Or
If you don't mind, can I ask your advices based on your experience on
kernel?

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
