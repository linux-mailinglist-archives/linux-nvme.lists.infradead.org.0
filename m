Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05978AFE6
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rbqGCCSeHll/xP0SoT9X8UCVQWoRjI8zUOk1Vo1Wnc0=; b=bh+yqg/DpYjHMOc8ngSEw/6WW
	F+nZo8hmjUXfgUlEaJ82RhcJksYqoY7E0hglgTdRvM/bEBhVJ1kUL6nZ2a9yQODECgp050cYeeBaA
	iVDa/wFRe7oVYB0Sk4/N57z0z5faiddzzuYQHL+zfzSj4xBVhvfIpmk33ghVovvpj1yFXRzz5SMsc
	EE/wdrDkibizpUAlQU0ehWhkIgbwOOaqhWSD5Vz2TDNK6XkhDPs0saL483VW0pBFfaO2eNstzoFZn
	qBYDTZnPnE63a/8dP1HQ5LP9/1DAiUjgH57Xb2wXClBvSI7I/sEr00cfjLO40d7tdAfYHOIhejOCE
	SgQWyQDjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQGg-0008HH-QQ; Tue, 13 Aug 2019 06:26:51 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQGR-0008Fq-PD
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 06:26:37 +0000
Received: by mail-pf1-f194.google.com with SMTP id w26so5722078pfq.12
 for <linux-nvme@lists.infradead.org>; Mon, 12 Aug 2019 23:26:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BAZrZYIpJGC9bwLp0zO5bOzgjpp6tsM++yDGAJhSA5U=;
 b=b9N9fVuHtRbI0FZDhT3u1EHJR1OOeW3raySZ8l8mN0rxJsYSnUSfjBtWzRSE32TRyC
 Bx8KqAuLXC0Ws9sZKRy8FYZaCDR8DE3yLmc1WZNlsBKVc1GpBTFYF0ll7FOBDHr/P2tH
 3Ca0yQ6lQ7vtWf+nla6LAksta5dFahJwy6LOEV6LBvg08IHbQ37aBVzRosIO3Qg7DSWn
 QIl5B7mdopNqV4hYOrBWCBbMLzAzFjBXmC6eSSCkQD07/FlJbYlRQEKatJVbv4ziIRFY
 FvoWE+SFCyp4A1vbxUkIQ1UAVcwZQT2x714R0qgdVN1T8P43Vvv1BbIvOaiKfPvaksJF
 dqFg==
X-Gm-Message-State: APjAAAVa253LHqeA6uHOOdNu7pFiW4lk9mCbPOAPf/GuV2wnL0gUXRsO
 ILnfBH18n7vaak2KaL5Uxfg=
X-Google-Smtp-Source: APXvYqzD2du4Rcq8B9VJfaH5DSsFRDz8W6aEfPM80rcdmTNiFrWRPXW02mDhnr3UXpdOybqJ782tHQ==
X-Received: by 2002:a17:90a:374a:: with SMTP id u68mr787633pjb.4.1565677593894; 
 Mon, 12 Aug 2019 23:26:33 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id ay7sm489592pjb.4.2019.08.12.23.26.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 23:26:33 -0700 (PDT)
Subject: Re: [PATCH] nvme: simplify nvme_req_qid()
To: minwoo.im@samsung.com, Minwoo Im <minwoo.im.dev@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <4ce851fc-2560-cb45-9733-bb8ff4a5069e@grimberg.me>
 <20190804071902.31872-1-minwoo.im.dev@gmail.com>
 <CGME20190805181113epcas3p2fe0b38b9075ca205e5a8beff77531c10@epcms2p4>
 <20190812110155epcms2p4f44ce4ea4d6cbcceae7a466c98897549@epcms2p4>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e875b23c-5cc6-6c15-e83a-7d1a3048900c@grimberg.me>
Date: Mon, 12 Aug 2019 23:26:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812110155epcms2p4f44ce4ea4d6cbcceae7a466c98897549@epcms2p4>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_232635_821206_69FE8281 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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


> Hi, Sagi.
> 
>>> blk_mq_unique_tag() just makes a unique tag which holds not only the
>>> tag, but also the queue_num of the hctx.  With this unique tag,
>>> blk_mq_unique_tag_to_hwq is nothing but removing the tag from it.
>>>
>>> Therefore the qid or the I/O queues can simply be:
>>> 	(struct blk_mq_hw_ctx *)->queue_num + 1
>>
>> This pattern is not unique to nvme, perhaps add a helper for it
>> in the block layer and modify the callers?
> 
> Sorry, but could you please elaborate a little bit more in detail that
> Why the pattern is not unique to nvme ?

This is at least used by smartqpi (although I did remember that more
used to use it...)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
