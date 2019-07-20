Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C666B6EE53
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 09:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xD5kCloaysVCno2RwgFCEcw2eG8ZXYB2fR772ou/qm8=; b=Ld4CsG9bl4Wcql
	+57AS/yLZ2nWt8O+vajUvPhzyHRH/DxoAMsxsDAnR8XcOP0qZKQBJMKHlcFc/VWLcANQAlwwhC8aH
	HdDepgKt1t2RVu8KwhQjgQ0SQGxos5lqaWBjisEnBpVanhmZw251G3RqgcvsGGK33ITwLW0PToFmW
	/EV5QtvsBhT1OEvZdNibunsRxPj/L28nGg8egrjQd9GVznqBmPYWKM66pqmKDnB3t7pg8GPcXqnQp
	YWtkuV5eOa3ACcb8mdvEAjW0m4lDX+Xtj09MqgqmBz/vuISyWQTrin3c+SkMyKIYla3/PJmlc2n4o
	wDw6fT/ZRu21SnH6z7OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokHK-0000cl-44; Sat, 20 Jul 2019 07:59:38 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokH9-0000cD-Qu
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 07:59:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id u14so15166723pfn.2
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 00:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aLs80WxuxfRxX9/H7O1BTGsQ44zIAvD7FiSfD7ORtWU=;
 b=hMrauXckK+M6QcnfALM3v5HP743D7eyiLXh+jdVFn9nusofbl+OCggh1QGw6clQnhe
 zGabPeHuvZsdn/QK3rRLvsdSU0HRKf0zQffDedxC8LUQ6oaXJ6VHCA+Yzd35u9oxlRLC
 MAcSDU0H/hyO2L8fylllA71jzZZ11cJHIQc49l3nd9ybuXx2fXzUTIdTwnVF5xGrXsmd
 nUhIuxORbSdidYUFjU/Bz5jLBC65KEdIMSpG9wW0TMmpN5q/1Qp5XX499Z9gFCcBg/Xd
 3D1VQwSk+u0RSGFI7a3gOeq3OWbhiaSChp6osrsyz2cCo8wWBLlgAVEH0eR2kb3qdclO
 l/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aLs80WxuxfRxX9/H7O1BTGsQ44zIAvD7FiSfD7ORtWU=;
 b=V2SXvccKZbigzZsmqR1pR9DV+andwrIWq7T20Ja8tzMWxFDPy4nVf7ZfOZ03gh37yG
 8sH7qrc7iNWiufwec9HsbfHJ5LYr6ww0NKbOPwHfV/XpQ+agtnk8cmu4npwGzaIbf5uO
 jpU4T97/u+BI0S/XQjJO4O8FJn5KGKMkP3wUI7dupy41N2cDJSQz4xPK78/4dFO90AHX
 IJsUubk8jkWvHJdjkSv87XjaDot7+PMmDWuxE4ffZ88kYWPuUPUfMmydkbJ2EwTruVSr
 AmNha3oSpriI0pLXbHlsaFiVllGYAZoDKdpdspy78fUNvI4XcBlmpCeuZ/LzpBKJmChc
 Bx7g==
X-Gm-Message-State: APjAAAVx+3Cr4KVC19v78z0ST0XxPEdzEi3d4TvhIZviRCLKgWDz6ox1
 Qua/71UQFdsOZz78UHscZO0=
X-Google-Smtp-Source: APXvYqw+0gyDUIJ0uAteDKCD03DsPx8BcZJBw+2n/+u3udxC6TehHdRK8CFoHrFHaS5ad+Y2QDDT/g==
X-Received: by 2002:a63:4c46:: with SMTP id m6mr60113151pgl.59.1563609566864; 
 Sat, 20 Jul 2019 00:59:26 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g4sm43895211pfo.93.2019.07.20.00.59.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 00:59:26 -0700 (PDT)
Date: Sat, 20 Jul 2019 16:59:23 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 2/4] nvme: move sqsize setting to the core
Message-ID: <20190720075923.GC22395@minwoo-desktop>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719194546.24229-3-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_005927_899404_7AC640B0 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-19 12:45:44, Sagi Grimberg wrote:
> nvme_init_identify reads the cap register right after, so
> no need to do that locally in the transport driver.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

If the first patch is good to be picked up, I'm fine with this patch.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
