Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DE695062
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 00:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2m6wJkcgS8hWiIXi0aOt/9vox8wlxkABXAM5DB3Pte8=; b=Tsmpx9q4M65rtW
	OhGglHmSsan98g891PBoy6xZIEqdoe86/w7tencfXbBOVwT6sLnCrRcdlP2gmTyfSq5zgB26MXZud
	jxpUTdMVVmcB89sViweXqdCxbo7kD78CDa7v0PL8QOqy4GdAwH6uSAdij4KmIj6sXFJqnKNEzXx5K
	nEoEdSfDsdOjXXs4pJV6DvdAgLVSu7J23O2FZI1rjss3lvWU773kmYW8UDmlRHFtGjHY9XsG+5m1a
	72h2ME+nttn0USUU3S2BhPw7d0PHmZ9/UISNu5XCUgeFo5m2hJ4SPvtiLl4d2Rkp+XFfZd3bv6P7W
	LzR+xW8XFRjotfEz+A2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpj2-0003Ts-54; Mon, 19 Aug 2019 22:02:04 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpit-0003Sy-17
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 22:01:56 +0000
Received: by mail-pg1-x52e.google.com with SMTP id e11so1962943pga.5
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 15:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rTQ/4aUgGH0Yv5fVn+rCKn3dYxUnSMN1xFaIHfYqJus=;
 b=BaHoxrWZOkFoaJwTRoYXWxvXVqwV7UbNcSEcYBphYepoME1g+xx8Zza/cEtrB+arHw
 k0IPcSJ3qry/nXd9OXT0cWD6NT+neQCaZD7N7ul7AaLU8g8vEkLGNo6sh41ojD8By315
 lDmGCTwmTuQxhf1R3564LzeqoEFYP+oVS7O9zkWGdHfuceeoD81pUalUJtD0Q5/BvzWM
 K8Cv9lNGNZsEXr2wrkPvL9Mw3opgJgPHryfhbGybzKA1bdkUKmjkGRsEwJCoY8kJQdpm
 /YHVyEU2yrXdtpdVVAp2knCH9ptC4IqgRGuvufiYpUjyrQjtoVkr+ZsIhMaZ110HkXqx
 OfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rTQ/4aUgGH0Yv5fVn+rCKn3dYxUnSMN1xFaIHfYqJus=;
 b=Xk59Vw07KzeyVdv3JhitJJVyf5nB3CgnE5PMjCcvUlfvLFQE7/dEAMzqZA0ZttDg6t
 FfHi1nTP4iXgtqgmOAT6F5tPb/kgElYNml4D+LWQvtmaY6a/Ol1nPIeOHOj4d+0bmF3a
 hLA048h4VGoWI9YzZXOQOFuSy7AAu3oiPBi1zqjX7DWoKi0A/2N1OZG4Y4EopFRXFPBO
 M3onenbWfPA8WiIx5ptXesdcmZpDTYBQoQ7GX61UEoRVcevSp1DUR8Y6DdSqgaAjp222
 RPzhfLYAGmZ6gk5MV4rnCNBt1U1dfbDw04TyAMV5rp7MxzU0UcorJM6JbULgWmI6mG57
 U+Ng==
X-Gm-Message-State: APjAAAUUNqoeHdf0Ryz2NTYT9CrCX845az2OQw7zOaqWNtaoWXqpIwLS
 y47O/k4XJrnqxwmm/3xPjw0U2n5r3rNgZg==
X-Google-Smtp-Source: APXvYqxxFUeXBcUf7ObfpnLfADVLWvyQ4+apRipg52lZ/m4Dnxty9oTKbQ7T95eIGVV1iT2D0WylLQ==
X-Received: by 2002:a65:5144:: with SMTP id g4mr22000467pgq.202.1566252112672; 
 Mon, 19 Aug 2019 15:01:52 -0700 (PDT)
Received: from [192.168.1.188] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id w26sm19135774pfq.100.2019.08.19.15.01.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 15:01:51 -0700 (PDT)
Subject: Re: [GIT PULL] some more nvme fixes for the next round of 5.3-rc
To: Sagi Grimberg <sagi@grimberg.me>
References: <20190819215911.28552-1-sagi@grimberg.me>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2e55d822-ada3-9b84-77eb-a38085bde489@kernel.dk>
Date: Mon, 19 Aug 2019 16:01:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819215911.28552-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_150155_075540_A6A21F9D 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/19/19 3:59 PM, Sagi Grimberg wrote:
> Hey Jens,
> 
> Few important late fixes for nvme:
> - multipath fix that prevent possible I/O hangs in path failover from Anton
> - cntlid verification caused regression in pci controllers from Guilherme
> - suspend/resume quirk that fixes a regression on the LiteON device from Mario

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
