Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639BC1C0063
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Apr 2020 17:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfa2jRBjVBjrCq8vHQbTCW2h7LQFOXD/HmqgJ2wAzmQ=; b=UFgd5t+kLokD4v
	9CgnBwjomqUYpmH+fI++JzEUrZayqW9I7IOvhmmxXsL4Dk+hLxGoG/R5P4of4IjSxssJ4E7W1DC2T
	RvgD8sckPupz1rE4BnACna6/nCfvhV1jQfsomlH2AB8qozyuQEeAnhrJfvxm2/m8rtuvc2xjNhPXv
	z0DKCl/SwmlBhHVJwEFtqFjwqrjqV/+ZcOJc3p307+AtS4iti/hH2HTQSuuTM9A/V8J+C98NQodR5
	TJZ5mUX2PUkNzRZzm6pDqP7gzsCqFpEX6wdq5BQejLR3JMONYbL4WsI63riHsmv/iw7znblwAtbac
	X1f6orctgJSCJz0hSzBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBBs-00023N-Sd; Thu, 30 Apr 2020 15:33:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBBm-00021V-Uj
 for linux-nvme@lists.infradead.org; Thu, 30 Apr 2020 15:33:28 +0000
Received: by mail-io1-xd43.google.com with SMTP id k6so1915275iob.3
 for <linux-nvme@lists.infradead.org>; Thu, 30 Apr 2020 08:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0wVlHHFG7TDcdYHqCvhhySc0fLcHG5CiyMQ4xaek7IQ=;
 b=plDtk4leUb6MAEpi5mZ+QvN0BH/ERr2y9gIXBqtHrszottbJ5Rg4lUdwDS52yXt6Nj
 V3OFLsXxpuqtNaeSthplo4H6qmb+IHNdLVXt/hksFm2Fs1M8hnWFPaGUYqKZLgNdhiiw
 TjgQunOApqK7OK9JQZzx3QhSRfdR0/bs2Alw08r+BS4zBin8AvlfoIJ5NOQM8LAZYerw
 yhYbgGRCPSm7QFchetksWtAYUewVZgvlrWDdEXlxTe1wD2JmbnbSH7qzglPKkbQO4m+3
 0hhgmP5RFdShb6AnL2CFr83QWaOT/Mg7TIyovQtFmd5AeSW+ci0Pol7qDsEKtPPYZyce
 jpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0wVlHHFG7TDcdYHqCvhhySc0fLcHG5CiyMQ4xaek7IQ=;
 b=QgcEuo6Z+yj9afzIWvzBc8Wr5Qk6Iq3DqHLrTqfw9IKkAoobJIemM5WpXw9Y13cMfb
 GvxWzUrJpDjNHhKJp/zM+CKEaqtPmV0x8+9odYzJNRzn7EKWV4vRwb6W1JXYH7FriwtD
 EZr5GHdhqFr49Bq9yucQmtdFnNyJyUaVZmW7yyyN6jJN96cCBfbsnEqci7vSrYvh3Ldh
 sMA3+fVaCIxGi53diZF7azmsMvNNvje7CjZ8PkdqnRw2hODJzUpco+jigZIyNv/b1qVY
 9vJF9+h0ynnNhIjTAW8ZeYwqafzDD3JZj1tK/xcEghiyfFmM/OdhZexi0ZGf2dXP95Am
 T5hg==
X-Gm-Message-State: AGi0Pua9zo95JLxl2EEumpy85uYAnV6j4tT4rbHkKnwyJX+zJlwA5aGR
 rx116ZfBDwRDm0IJBum5xArHMbCHsU4s0Q==
X-Google-Smtp-Source: APiQypJYTN3yOepMT7MkIbvpuo0rB8AJl2AWioLOiemFa9XI5DcPZq4jhg5bTBqhViTXrgnLbvWplw==
X-Received: by 2002:a02:c9d0:: with SMTP id c16mr2412549jap.80.1588260805259; 
 Thu, 30 Apr 2020 08:33:25 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id z21sm2018080iog.31.2020.04.30.08.33.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 08:33:24 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fix for 5.7
To: Christoph Hellwig <hch@infradead.org>
References: <20200430152832.GA2579034@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <d5d8c37e-af83-2d58-2018-d59eb959b40f@kernel.dk>
Date: Thu, 30 Apr 2020 09:33:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430152832.GA2579034@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_083326_993786_BB883285 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 4/30/20 9:28 AM, Christoph Hellwig wrote:
> The following changes since commit d205bde78fa53e1ce256b1f7f65ede9696d73ee5:
> 
>   null_blk: Cleanup zoned device initialization (2020-04-23 09:35:09 -0600)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.7
> 
> for you to fetch changes up to 132be62387c7a72a38872676c18b0dfae264adb8:
> 
>   nvme: prevent double free in nvme_alloc_ns() error handling (2020-04-27 17:08:06 +0200)
> 
> ----------------------------------------------------------------
> Niklas Cassel (1):
>       nvme: prevent double free in nvme_alloc_ns() error handling
> 
>  drivers/nvme/host/core.c | 2 ++
>  1 file changed, 2 insertions(+)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
