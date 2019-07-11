Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE0065894
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 16:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLrC7l34rXInPEoyKSSGR/ROFJXxYaFDLmQhM/YrC8k=; b=QuxzM8X1rGwo9/
	gIly4rO7/DWIWpJCqUxQhZqWgL7N297OMSub19jeCsNQIl5FLKIaNojYBYqty202E64Y9Yo/LvYS0
	F1+LY+1+qm5O2HYDCUP7sifhOITcOFtlD2Uoi1e2JQwMOrDma6iFiaBuPbW/GilsX8q4UnrNB+/9T
	jrvNObb8yay715SVcRoMNhke5rObtl2buyL5N0Y+MTKQcN8rjSx34PJjMIJolyL2XPw5asT0WkO1E
	DwyGgDwNR8084mXYYzJZoS1ETW1W+8hGYTvhxG0UlM8zEvM5aHag3aZE9OvkLl5ZaXoRskXeXxH2L
	rFFlQQuhNBDR4OnCR4DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlZpG-0001F9-Nw; Thu, 11 Jul 2019 14:13:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZp4-0001EM-6c
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 14:13:24 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so12887733ioo.2
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 07:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=16Yz3BOasQd0d7r+jsj7ibx3CTf61ox/R+rnrtS0DFY=;
 b=y5H/caJCu1O9QNsZ2//okCjT4/T0R1Vhj5J+Go/Mm7utx4+xSzmkYSDeN1MzirZIOL
 0Iej55gx4e846buButpi3ZPYrz4xNdkDHsmmNa8ivU4M/6Hg+GQdo4qwifoQuC8bv+hJ
 aIhKxcrZ/k15Z4SgUxoUcZB4c0UoSxJFZzIZjyGlsqI6wrOaHPhc4EfqJkHVb+ItxsCm
 4HJQIWKLV7R+PxxorUbRsR9RWotjJrYM+WQpCvXmUfu/VIYScD/PBbJYs47gg9QT1egD
 q+mDA7f/5Np3rRT5WEr2a2lnttFmHwL/ykaJF6QWZ2LkdrhRwuuC08UPGITL6SnX0nyh
 h06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=16Yz3BOasQd0d7r+jsj7ibx3CTf61ox/R+rnrtS0DFY=;
 b=ISKsSGcyP9KmadRenhN2XTx7Ej3eRALl3KT4nIlmNbwm520XftY8Jdb0yTKQOy2NW7
 h+vWOgVRcEl7oKuf79bpuiXyNU5qli2PjbpJLZIyV7so2RQ2CGW0EHdRcuYDAgteJHRv
 S9Ph+V1C4vtCj1/y1s7vKfxllUf+DQmIXEyHNbRzOBxCxEGyDoIP0uA53h814IVagM09
 KOLCR269Yf4jv7qP8LxQHAJ+z/RYB751iPVHaXK2jKqKXPTGOgqdjQXkcf4cvKnKO+fS
 GxYmI/eJplAgo7zPUWf6HTShLb+DFMsulksegH35XNPRuzpUw0pzKP1TMttdSCE56GpU
 6F8g==
X-Gm-Message-State: APjAAAVRxqg0Y7zWJxHbF0MeqH8rZwBLQtJcUTwbxluTvZp9T6hsXBlk
 n/VVr626dIGD5iEM707yuXTXQyjMqsc/Gw==
X-Google-Smtp-Source: APXvYqy6T8wuuDVkyo1Evus0rMXuKhUfA9IFHzpodzDqmB4NGwZK3nFkJaSdkSURIW/VFWu5y7EfWw==
X-Received: by 2002:a02:ce37:: with SMTP id v23mr4708810jar.2.1562854397332;
 Thu, 11 Jul 2019 07:13:17 -0700 (PDT)
Received: from [192.168.1.158] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id c17sm4321271ioo.82.2019.07.11.07.13.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 07:13:16 -0700 (PDT)
Subject: Re: [GIT PULL] nvme updates for 5.3
To: Christoph Hellwig <hch@infradead.org>
References: <20190711112031.GA5031@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <33e106b8-aa93-89bc-ea78-5571e8c11272@kernel.dk>
Date: Thu, 11 Jul 2019 08:13:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711112031.GA5031@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_071322_248415_04F09CFC 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/11/19 5:20 AM, Christoph Hellwig wrote:
> 
> Lof of fixes all over the place, and two very minor features that
> were in the nvme tree by the end of the merge window, but hadn't made
> it out to Jens yet.
> 
> 
> The following changes since commit c9b3007feca018d3f7061f5d5a14cb00766ffe9b:
> 
>    blk-iolatency: fix STS_AGAIN handling (2019-07-05 15:14:00 -0600)
> 
> are available in the Git repository at:
> 
>    git://git.infradead.org/nvme.git nvme-5.3

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
