Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432FC1246E
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 00:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raGCsvVaN6moBYoXg3PqWKSAHNubifhlsntN8V+WGww=; b=UqJqrzxwjKuZlL
	XD3FD2A/7dtEgqs3ZCNVuOM77pWhurk/Xef7m+ttiCypD6KdZIyv7OGk46uWqijxhyIK/KM6c58/H
	WZoWqiFRGCS2UF1YQ5Oh5KMuKlXL/6hPN/wafto6QlUiQE1F8tqJX5RDTRYAUVHdgL0UE3kTo2pXO
	sO2ViUATzC2ZixiJ12TDovzOcf2uHGmo4DZjtAMEtdSZtZ5ADdIklQUi8S9h2fhUif8IDGF/sjy8D
	EUvwInYuXm0xBYJ4yj3V0A9qls5MPL82D1qoO4HvZjYuruTIG7ixfMv5WF5yJ1Zu2NPYcTET5bucX
	QAQR3zs6cYAECeHkZA+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJru-0006aO-JO; Thu, 02 May 2019 22:07:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJrp-0006Zk-5F
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 22:07:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id w24so1670004plp.2
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 15:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gVceAqe64TkwgNQl4+fYtl0hmuzSrNYgku2ffGkIlWs=;
 b=SSm5agFn6nzgCwE0OvXoDAvBdsea/emnbG7AYN6Jf0YcorCJWZbQRMFjTR8POkdx7/
 pZ7eSr78jJAKjLNaxJcQbUkCBEZlL288J7cQcyVDj+R9DXjnWr2Rqs7ijm0oTL6JyhKf
 3716ylLHeNG1aNS37HZyjI2dNQ1hXlK2aNGYg2+rcMQhSVG+zV2B8arVpB/x3CzfZhzQ
 7oqAD0Xahmrk6XpZX/ox7lJbooT+Gi0UUEjK3KKnAvnrk7aFfy1FslGMyNyZY2HGzsql
 YPrdTCwC8z72QHKS+Z6FVPHkQ2ffnKx9ZoAOQYJaEaSAe+EpUIDwsNIzEHU5TJBod532
 hrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gVceAqe64TkwgNQl4+fYtl0hmuzSrNYgku2ffGkIlWs=;
 b=q6eiAfwPRtWUG0S/cWpj0ZYBkNvRQeqmHO7Gz9VqzV+rGsHTSbih29rz9NvrQtv9Yo
 gTDp7Yjgj6swN0HjqL2ab/QM7wiaq3SGjIYGqoT2TGdYBIMkLbk5AOpZSliQYfr8JVTz
 WkVHl/AfhJ5y5b/a23x798OFlgilYQqZ5aNh+mPwRiGkUXEwkqUCiHIhq+sYZGsdMO4b
 Jl7KBfgnlAdcSSCul6t4LLNd0nuyEBp/Qlzrr8rGyFISkBnPE5tyiaBRkfDke5WIRIXj
 rjw18GKV4k+/RxLntfT4b0lZKZQQiujMNuojeGB7Z8MK617s2fRp3mi4+MuNxuycYxCx
 5+nA==
X-Gm-Message-State: APjAAAVaD/csVNR1dSMG5cTjYTAgAWuVMSgL/oXEA4TC8ZYR916byMwp
 QBPgvV0H9I0IW5MNjGI7GiIL0kmhv45PGw==
X-Google-Smtp-Source: APXvYqwS7wJ6a7jTbsWWPGGypzo5fdb7XwrFAaa7i5GG59CXgCJUL+OHUqo+FOkKWu+xYc2VLQZ8DQ==
X-Received: by 2002:a17:902:6809:: with SMTP id
 h9mr6355171plk.129.1556834867279; 
 Thu, 02 May 2019 15:07:47 -0700 (PDT)
Received: from [192.168.1.121] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id o2sm331597pgq.1.2019.05.02.15.07.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:07:46 -0700 (PDT)
Subject: Re: [GIT PULL] last round of nvme updates for 5.2
To: Christoph Hellwig <hch@infradead.org>
References: <20190502215825.GA27894@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <6c7c2e8b-bdb4-3814-31ed-300a04ec2285@kernel.dk>
Date: Thu, 2 May 2019 16:07:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502215825.GA27894@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_150749_202175_2AC13C07 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/2/19 3:58 PM, Christoph Hellwig wrote:
> A couple more fixes and small cleanups for this merge window.
> 
> The following changes since commit 2d5abb9a1e8e92b25e781f0c3537a5b3b4b2f033:
> 
>   bcache: make is_discard_enabled() static (2019-05-01 06:34:09 -0600)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.2
> 
> for you to fetch changes up to 6f53e73b9ec5b3cd097077c5ffcb76df708ce3f8:
> 
>   nvmet: protect discovery change log event list iteration (2019-05-01 09:18:47 -0400)
> 
> ----------------------------------------------------------------
> Christoph Hellwig (2):
>       nvme: move command size checks to the core
>       nvme: mark nvme_core_init and nvme_core_exit static
> 
> Hannes Reinecke (2):
>       nvme-multipath: split bios with the ns_head bio_set before submitting
>       nvme-multipath: don't print ANA group state by default
> 
> Keith Busch (2):
>       nvme-pci: shutdown on timeout during deletion
>       nvme-pci: unquiesce admin queue on shutdown
> 
> Klaus Birkelund Jensen (1):
>       nvme-pci: fix psdt field for single segment sgls
> 
> Minwoo Im (3):
>       nvme-pci: remove an unneeded variable initialization
>       nvme-pci: check more command sizes
>       nvme-fabrics: check more command sizes
> 
> Sagi Grimberg (2):
>       nvme-tcp: fix possible null deref on a timed out io queue connect
>       nvmet: protect discovery change log event list iteration
> 
>  drivers/nvme/host/core.c        | 31 +++++++++++++++++++++++++++++--
>  drivers/nvme/host/fabrics.c     |  1 +
>  drivers/nvme/host/multipath.c   | 10 +++++++++-
>  drivers/nvme/host/nvme.h        |  3 ---
>  drivers/nvme/host/pci.c         | 37 +++++++++++++------------------------
>  drivers/nvme/host/tcp.c         |  3 ++-
>  drivers/nvme/target/discovery.c |  5 +++++
>  7 files changed, 59 insertions(+), 31 deletions(-)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
