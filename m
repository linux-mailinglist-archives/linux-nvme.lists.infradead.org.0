Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CA265753
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 14:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrkEqdnUls7+maVy0AfRoO8OpKSL2FCoLmkttHH0LDQ=; b=C4ItA1tMvOMDhf
	SJdWW3BZk64yZD/+Rir9bv+W7ofS5CMk1J6xCbHA5VcjLfFCg06Q6lb5W2jaDA3wq5HwWd6lo6QaJ
	kHBMQqXr2W13cVZA7pmWSGsOWRQ2ft6uQww1BeFrx1pU9ITgDJzKo3cnngikT0891bToF1+PrmdMr
	8FON6XpVG0temRsILb67Rz1lQgjSCqlh3ja15LfNAY9oiqLkBcvyUg+0b2sJRI7ECc4aZmXSWIQKs
	y0s11SxoQuE68HW5CP4OJG7/EnLleog3bL+DQxeezQjjlOdjiZUa+8S2N4gSBVAPWWmMOj/Xc4o/E
	J+dZdZLklXICFnZA+K6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYZR-0007CT-Fj; Thu, 11 Jul 2019 12:53:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYZN-0007Bw-3X
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 12:53:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id t132so2896270pgb.9
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 05:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X5gr/AmZVJW9zD0bN0a/uiZiUidnYnKHzf/WUkpbUTc=;
 b=mBf8ucRsJIbiX+JIi6S7IdiJWnHIZl6jFcwSGDYWDMot5uDm9ehnuaUeXMcUwB8Zo7
 kLkl578g/55mCJy8/PLtG7sVa6nyjg0X4WrBD8P8XfOCIPCAX+WZCHxxdm4IsHNoWHtN
 z40ENMFMY8FRiOgFyRECvbUfsazD/u36JNppqTbGLUzYkg+D0iR5UYqE6SRF+FcfHl7i
 kYPALoW7cueUn+8odoZssolXWzQJjCF5CsqNFY9TisA4zmBZgdvxDslgJX/CpgBRhMp4
 JzSmi6uTJ689basg7Vwj1Hgb9EfFrmCG4oaLx+OTDmaxHjsxbV5juIXDtX8NXSBQh3G5
 rXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X5gr/AmZVJW9zD0bN0a/uiZiUidnYnKHzf/WUkpbUTc=;
 b=P+1JzPa+G0uiCB7zxYUuA2Y7LzW2KdbY7yfrHuG5Bdj2ETuV1y6BV13PZDXBInTDKh
 pYdz8guK/MJDWBZjH73NjHVWHwgY61nlWP3nj1IEb3Hv2A1H/OHgz04PzBz7Xg0ad4LM
 JKH0k7XeF0Y3Ec9/9k4r92nsxvM+4iq7XaBm/I97wDCOwDl3jvX9hVrV825GT9NTNonb
 mIOIlp/bStJcjmEnEwE8ZMw5cr+jO3tKiFwXNDMJuYGNPijVKW0+otTqPARlE3RC00e7
 bhSwcMfkVrLpQ1ueX3njKsMfenKoI5zUP+Z+bk8CiYZhZrxvypRPHEkMOx6W6k6fzcd7
 lzHQ==
X-Gm-Message-State: APjAAAV6ABuUhPc0bE9eKimiXXTe6rKmvu+hC2Fe8vz5p8zV5G/VT2oy
 DwT/Q7ohj6d9AlRtZIN7qyA=
X-Google-Smtp-Source: APXvYqwGK/PeiSEK1MTVu7TaEtLScEAcrjaFgwOgHZMAGZcrh3JD/e7RhTiIp6nvrNpiVnK0tmIt4g==
X-Received: by 2002:a17:90b:f0e:: with SMTP id
 br14mr4675090pjb.117.1562849584275; 
 Thu, 11 Jul 2019 05:53:04 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b6sm5388806pgq.26.2019.07.11.05.53.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 05:53:03 -0700 (PDT)
Date: Thu, 11 Jul 2019 21:53:00 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH rfc 5/6] nvme-cli: add --quiet option
Message-ID: <20190711125300.GD8398@minwoo-desktop>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-6-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710232740.26734-6-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_055305_168470_D370702D 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-10 16:27:39, James Smart wrote:
> From: Sagi Grimberg <sagi@grimberg.me>
> 
> Now we are going to have discovery log change events, so
> instead of trying to figure out which NVM subsystem ports
> are already connected, we let the driver do that and
> only suppress the failure messages.
> 
> Example:
>   nvme connect-all ... --quiet
> 
> This option will be used by the discovery log change corresponding
> udev rule.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Hannes Reinecke <hare@suse.com>

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
