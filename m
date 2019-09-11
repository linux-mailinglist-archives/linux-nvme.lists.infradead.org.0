Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE15B0559
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 00:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+zMDmRkFHmR0OI8V8O8vd76pmdGrExaG6cQFxB0e9Q=; b=FlcjrKHsMeMCHi
	BuEwmH34FMDWWJaenhtaiyoXZ0Ozz/apNC1b8KY3XNQm7IdwmGDa+QSPQU0gnE7aWy6PBJb1Z8X7K
	K4e9vjOvGSkcotImbYbPX9nuUiT1bEZozXIW9rEbySKjKynw3DKeQU3gmGLGEJnm8WcjJ93IQxggY
	quGRrQ53unn/M8szFuBGhWQmndvs3ig5Dyd2jrjJ7NsohZY97fDAhfC6OKr4rKsdszxW0RyEZ/gYn
	zRso6JfdNa3J4A6blMp5Ym0YJNuiV2xus/DJSK0iPF0h6OE0EG3dxUh8ZEWvHwXv1hawRLTfFRUJl
	DI6bIDvsvH4KZzCvlZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ag0-0003BD-Ii; Wed, 11 Sep 2019 22:01:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Aft-0003Ar-Py
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 22:01:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id x127so14548550pfb.7
 for <linux-nvme@lists.infradead.org>; Wed, 11 Sep 2019 15:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8POwdSLkTxkHw3P45coj3u0+LKAWGfZxNTr61kDQCFU=;
 b=jsY9OKgLofPa+bRlH+ErgYotFJB1blj+NIM7OZXX2aZqu1hyXVoL+OHHx7QvmhEOvL
 Ra18DkUGWxebDYSyB8UNXd0vO2tySyDfQjR3s2yz1xbHB3MNWVqEXXGZeis2FYh9QnWI
 1Qomk1x9BjsPqJ9gHASGRPzvBDb/cgZNGJUK27BFNuQPI4aqUgkSCBLAqWXZ3ObdVzM/
 HPQS81Qj7MsoRCgtTLhV89KsdCj0dQ2crTOAiEeGJRo6aI07ieJJJyWc3CZ74grIm8sH
 Zq5kcwCilN6y5cmwMR5wx6404RfuNgqLml7Xpc/+SyIrXRh0BSqDNK58VII5DIuZx4ut
 vX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8POwdSLkTxkHw3P45coj3u0+LKAWGfZxNTr61kDQCFU=;
 b=ixerVguRSPxyjUMU/noHq762nVlN2xVEXzkePrchgJNSvfDqkEMrLUXgtOloyUVIer
 R6J/3XoYhVvRWw2ZbeAKc85SbAv7VQcH6+t5UWTE3mfbakA+i9Sdc21THCI342aagVOi
 PBt6eSQecrAsQMnmlX750RbNMzDiBnkYC4csO6/WxJh5jRCb1G7H1ZETAo1b2biJCDcZ
 zed22sHqI4kGDPyGRc09tWFjwYRUBWeyG6hAYBcu7xc0TS3TJQrFq9BuSUnCpPavFql8
 OFtr9/X8LpuPB+PjZDiZveTFdfhRWqsHk6zmZo1ECootDHIicgGxRLM4Racl5AUbXhjO
 TYVg==
X-Gm-Message-State: APjAAAXdKgok8XKN3CD3m/CbW9A4DujRXFP8zSEw0fLtDwo4cXIsi9+f
 rOcGP+jUTKN3cEl+gbrwfDnq/dikYhO0oQ==
X-Google-Smtp-Source: APXvYqxsgVjjxWVy5YHoqS5cMvuPNwIad8I8+9Fc9CcEozQWPycpOcSoC7AiiS/jG1w8A0Tg+YMdtQ==
X-Received: by 2002:a63:5626:: with SMTP id k38mr3709697pgb.134.1568239275630; 
 Wed, 11 Sep 2019 15:01:15 -0700 (PDT)
Received: from [192.168.1.188] ([23.158.160.160])
 by smtp.gmail.com with ESMTPSA id z13sm34469328pfq.121.2019.09.11.15.01.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 15:01:14 -0700 (PDT)
Subject: Re: [PATCH v5 2/2] block: centralize PI remapping logic to the block
 layer
To: Max Gurtovoy <maxg@mellanox.com>, linux-block@vger.kernel.org,
 martin.petersen@oracle.com, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, hch@lst.de, sagi@grimberg.me
References: <1568215397-15496-1-git-send-email-maxg@mellanox.com>
 <1568215397-15496-2-git-send-email-maxg@mellanox.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <380932df-2119-ad86-8bb2-3eccb005c949@kernel.dk>
Date: Wed, 11 Sep 2019 16:01:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568215397-15496-2-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_150117_901111_A04C873B 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/11/19 9:23 AM, Max Gurtovoy wrote:
> @@ -1405,6 +1406,11 @@ bool blk_update_request(struct request *req, blk_status_t error,
>   	if (!req->bio)
>   		return false;
>   
> +	if (blk_integrity_rq(req) && req_op(req) == REQ_OP_READ &&
> +	    error == BLK_STS_OK)
> +		req->q->integrity.profile->complete_fn(req, nr_bytes);
> +
> +
>   	if (unlikely(error && !blk_rq_is_passthrough(req) &&
>   		     !(req->rq_flags & RQF_QUIET)))
>   		print_req_error(req, error, __func__);
> @@ -693,6 +694,10 @@ void blk_mq_start_request(struct request *rq)
>   		 */
>   		rq->nr_phys_segments++;
>   	}
> +
> +	if (blk_integrity_rq(rq) && req_op(rq) == REQ_OP_WRITE)
> +		rq->q->integrity.profile->prepare_fn(rq);
> +
>   }
>   EXPORT_SYMBOL(blk_mq_start_request);

While I like the idea of centralizing stuff like this, I'm also not
happy with adding checks like this to the fast path. But I guess it's
still better than stuff it in drivers.

You have an extra line after both of these above hunks for some reason.
Can you clean that up?

And the blk-mq.c hunk, we have 'q' in that function, use that instead of
rq->q.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
