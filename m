Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B2B824AF
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 20:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FcZgZnxc3VM2on9PteztV/1GuO/R2miLoiiv3c6Fj7U=; b=LcIwdsM+k1reJbwGpoaPs50pm
	KE56l+y4uTum6h4ZABLAjO/jRj4XgxCPZGX+6nAF99eORGQEP3oxu/bmhqphLCmEG5BEi5RGunkI4
	OJeK5Tkb82SsV10rL5HR1Zm1r28ilyhvrm2C0+igbS4yzvYglIFRkmnjq376ExnFM73lNcmA/FTOr
	+rAvIhIu3CKSfLP4gZUSVBOB3qRcl24LKhLFVLNMHTUkhilXffYYhRNgtF5J9mHSvOsbwTKcY7w4o
	6JPKucHJWbtXgePrq816Og+kptRcR/YMcZOP0cBJtA2G1EvxBYJm+oGd0cX9jydZoCaoD5l3hz+V5
	Na54Vzbxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhRp-0001Nk-Mg; Mon, 05 Aug 2019 18:11:05 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhRk-0001NR-An
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 18:11:01 +0000
Received: by mail-oi1-f193.google.com with SMTP id v186so62711812oie.5
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 11:10:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lq5dRxpjJs0dwldWtZAV/pnIxUxjKVMV87XCNFSsvpc=;
 b=l6J/I9Tn5yFHYcJLZ+PgepgJGnWY+Qp/8hdI0STnL5LR6mTtmhlic+M4YOFCtyhqdi
 lWYZ2ILYLAT6HBTJ8mMZMc/CkFXJVRZIViV1lFKS5cyJ/U/J3S+SPlEzibKWBSzS1+KQ
 xEuAyRNxM9clE8i0PGkoyxmbhzU/u4NOWDFzIjPS0uoLi5OACF9vEBiieicsEIBXgvjA
 UpvIkfLyA8Xqg2WjCRubadV/kkjFsKa8d+yUIjO0ZefnsF6581rO96xV02Zd/q0e+LLX
 4i3d1pMWgDYr1N7M6mN0JvWpEtOIKGStsEIqMfT/L3IKEM2PwChMGsWMpC+ge34CJz20
 dzTA==
X-Gm-Message-State: APjAAAWepaL8NZQ6HqWq/yl4aCLqaQx0fFGAG8FzYctAsIRvXZfNYEQQ
 zbtW3XS3NKvRX1Q3jw21R2Y=
X-Google-Smtp-Source: APXvYqy3NuRooEgEcoj+sW2a142cEr8is0A/FBDbjzPcnNtaBDgw2SDPFG/usCgUENdVYAtRYvl2yQ==
X-Received: by 2002:aca:bfc3:: with SMTP id
 p186mr12501841oif.107.1565028657908; 
 Mon, 05 Aug 2019 11:10:57 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id q5sm28137620oih.2.2019.08.05.11.10.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:10:57 -0700 (PDT)
Subject: Re: [PATCH] nvme: simplify nvme_req_qid()
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190804071902.31872-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4ce851fc-2560-cb45-9733-bb8ff4a5069e@grimberg.me>
Date: Mon, 5 Aug 2019 11:10:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804071902.31872-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_111100_374102_E2101102 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> blk_mq_unique_tag() just makes a unique tag which holds not only the
> tag, but also the queue_num of the hctx.  With this unique tag,
> blk_mq_unique_tag_to_hwq is nothing but removing the tag from it.
> 
> Therefore the qid or the I/O queues can simply be:
> 	(struct blk_mq_hw_ctx *)->queue_num + 1

This pattern is not unique to nvme, perhaps add a helper for it
in the block layer and modify the callers?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
