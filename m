Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B11A9A5C9
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 04:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MiIWsKheydHKWsoXJtdmp09yXhLcYV4EG0iplAJgSZw=; b=Ko7wx6jaQi9I3pUTJvnd8SiPv
	PPd5nvGaLuWWaX9xHKewbcVC3hFdgTbhQhDuMs3m24nJfU4NGdfkHCUWylksa2WFSLL1SnCD5HbJh
	7Ksa7ki0KTjnvRCF97K90JcDZoQnFjl8VKIeZDfCB6dqGGZIsKv1yMsI8vs9lE1ixV1m431pl+6lC
	59xo9A/H1S5Wb/w1jiEzQrH7JyGunBZp/4mebIaTsNzxuUzBLIs4QOTvC2XFy1RF1o8D1G71Bpj5j
	/XyyWn+844vQ/9JkrD9b0WE6ueO49qIHGpAYyKCT+5a6QD2DHpFK5M8QZPg2Mj/WUvhMv55zGgKVZ
	x8JLMQKYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zdy-0006x4-Jx; Fri, 23 Aug 2019 02:49:38 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zdn-0006wb-IJ
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 02:49:28 +0000
Received: by mail-pg1-f194.google.com with SMTP id n190so4891063pgn.0
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 19:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=erly22A5o3erbBEtbW0Xio0qIl5NhjNrmLVlPfFXXSE=;
 b=VUB3KbPH5zPsqTE9dD1qI7kMSNv98cPIdnMvJuX2ALLkW0p0/gQQCnzwjIFBYTSqLm
 76Yp8RvKyIuVS1Cs+a4iSBU/4kuT/GHIkXRfUnJW8Lbj52zcFknHIrV1p8M+YycLWI9J
 W6XZmd0Wngeq7aztRh9Zz5FVd1XKPfyaH5wi0JFiL6UduReGtXKJiKITceDKJjxpRcar
 P+mXMA+pk7gKOvct2hgQNnwPUvbDpI68il+2mRalkrSA8zH1oeYV9fpYfiQnC+fIQcKd
 OXP3QQjVdmmC41S2kSD6c3DVCdvHSCiXAeYVEpq4iTFmepTv6enp7Zmo7OM1zo8zh2mW
 bpgw==
X-Gm-Message-State: APjAAAXvwEiz8zvkjPj1ZV0tomUcAOZ6bjh5yVuc9NhzS17vnnoax9H+
 t3NNdiSQCfTQ82BIZiiB6ps=
X-Google-Smtp-Source: APXvYqziqq38E9W4fMHF/MNa6AKjINDBl0N7Y8q6MQuM1ifl3h68lRmuDZIJWs8DS3YkAZBmv9B13A==
X-Received: by 2002:a63:60d1:: with SMTP id u200mr1931113pgb.439.1566528564965; 
 Thu, 22 Aug 2019 19:49:24 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id z4sm574929pgp.80.2019.08.22.19.49.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 19:49:24 -0700 (PDT)
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Christoph Hellwig <hch@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
 <6e9734ac-7ad5-a7c2-e6b4-da64e1c3465c@grimberg.me>
 <20190823000313.GB2386@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8fbb61b2-aa76-5613-ce7b-834f135749cb@grimberg.me>
Date: Thu, 22 Aug 2019 19:49:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823000313.GB2386@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194927_610120_E3F99447 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> We actually don't need to separate revalidate_disk, we can just
>> propagate back the nvme status code, just have:
> 
> It could work, but I don't think leaking the positive nvme status to the
> block layer is a good idea.  It will come back to haunt us, just like
> the blk_status_t version.

Technically we never leaked blk_status_t to the block layer but returned
an errno conversion of it, you just happened to dislike us interpreting
errnos and assume they may be correlated to nvme status codes, which I
can understand..

But it is cleaner in the sense that it is agnostic to whatever
revalidate_disk is doing in the future because it relies on semantic
errors.

I'll take a stab at separating revalidate_disk. I just hope that we
won't haunt us in case revalidate_disk is ever reworked somehow...

I'll send v7 soon.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
