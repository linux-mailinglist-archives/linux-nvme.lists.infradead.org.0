Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993FA6D792
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=Dk7VnbTvGb5BdbH45DjZ2zaSp
	zvwtlSsGcTXE6Dnu4uKZMLjFcwqIJHubqBVIgUUgxxe0r0eO/uraXaURvf0UBlf8OtLBJOZnDQNBn
	nOHc0I691po0uGMsw8ld/Su4BOZAL88gos4AetUt4OgqA7oDURNYQtwOyBoPTVYPY88alV6e7T42e
	nVaLee6P+/wSU72v0Rsb9edLkxZgNDORVZrDq+oBQkGrMd+qkfnWG/PuFvBfp1aJ372dfFfA3yrZj
	wlTon3JZbQYAMbBPRWTLuTjqHVmFeLVnvM0jeu1BRxkLhpr0TUv6uGWXh0pk0ZeOK+wYHNtWvPte8
	emoNMk/XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGNZ-0000Qd-6y; Fri, 19 Jul 2019 00:04:05 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGNR-0000P4-0F
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:03:58 +0000
Received: by mail-oi1-f195.google.com with SMTP id w196so1626120oie.7
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=H6/Hj54tLeN8JA6aGK5TzY5kBUwhK7ohFXLzqBDIFTbv6JFuAnAwmurnNW2hL8U6jy
 C/ufHdCyIsXyl1ftUFCjt0eb3kHC4xH6dCL7pb2EWtsf6/47vf9rXjA8mx/8B8WOBlP3
 pWQItTxU5qcF1uajAtaQiKHuobLW4tkfzBWyC9EsgNJKxMTtbIP5kF3zhZBFiaujOxNr
 rjQ694I/sSY78zXNLfxYgzYB4ZmlAEGlXJCNbuKF+BgFic6BzOkqUDYaS8FvOe+ULqiJ
 yVtBSCsWHlF3Q2jGrpm89cwuzIcAjbGiAHiwstcFbnkFjqJlE2FnrUBHegKhMMbIgtix
 Jk0g==
X-Gm-Message-State: APjAAAXey6uVUL412MOMRBguzmeC5C+4veKKoV/KRo0CUx4AFS6id8oT
 JFqYb3EPiTvZ0ABWK1juY30=
X-Google-Smtp-Source: APXvYqwXmI+xmNjIVWk7h/9AC53PT7Gf6EJvpvJRB5XNz6gVL0e+il79g7iVNW+3cnS9GFhvUFmcjg==
X-Received: by 2002:aca:90c:: with SMTP id 12mr23595245oij.91.1563494632110;
 Thu, 18 Jul 2019 17:03:52 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id c66sm9632510oia.58.2019.07.18.17.03.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:03:51 -0700 (PDT)
Subject: Re: [PATCH] nvme-core: Fix memory leak caused by incorrect subsystem
 free
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718235350.6610-1-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cc96d8a4-d5f7-d445-ed26-8e9326b050fe@grimberg.me>
Date: Thu, 18 Jul 2019 17:03:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718235350.6610-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_170357_046777_D9F94CD4 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
