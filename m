Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B259D5CA
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 20:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pOujOq5xoPR3AbuUZ5btbRn9QtiCx9D9MCSKVOw5ADY=; b=bAmtv6vCHN3TnqQV2V7xWvQ6b
	GewE4+HMZTX/Kfc1vxONiEgQRAOEW5ln7BxP8H4k1LUaLaGtsiAKwcwozG/caeP3TiiqGK1535Dhg
	zwOZt0LRxH/A6dkXe067JZVn2dP5u375Ec3Zr/ZKZ5YsQ4wb8aKy05Fb0V2kyIAKeOhhqkr8yybuN
	u8wrzDMXlA//OpAWe1oh9wJ9VVh4sjEWEtizo1wdjl+5MCIW/2pCf0FA48aKejSYEWDkkBTqSdkh5
	ZLBHSr3vjtlNSbxcEtZSatocU92d5BeK90ezNPSlES/R3iqAsg1BGnVeIrhqZjkH6NUvo252nh0qH
	gGz9rjiBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jho-0003Nn-Ba; Mon, 26 Aug 2019 18:27:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Jha-0003NP-86
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 18:26:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id d85so12342369pfd.2
 for <linux-nvme@lists.infradead.org>; Mon, 26 Aug 2019 11:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=b/cWjwOdSnzrvG9/Nzs1e/68ziHrEOX0dKDuqqW98Lc=;
 b=c00A4uyNtAVFUatXRWJKGToWPPpgl6uaWah6BhSGrkpC3C7aPuYCnxdvwiWHS53dF+
 qQQf/Q4xGVf8bRQZsSbXJT/NTmI2TIR30CZ7R8rO7J9/IvNE57rZ6+sRKuaQ/CJF50h5
 1Rijq9M2WWR6m20+nEt/PDvYmHdhPgy8tRqa0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=b/cWjwOdSnzrvG9/Nzs1e/68ziHrEOX0dKDuqqW98Lc=;
 b=PTHwVlGxqFreGRziWhGSFjL5SZIL7DfPGnzxIgBtFftDK6y6FuXck/LT52JXB0qmmp
 oNQ/Ji4CLMKlUYw6pzu1fEY0M41tjy9lFs+eZP++bfjQp+KVvpMJl/hMQTDXXggq1CAB
 V2UiiC6ES+mktEUoB4+CxUrlsYlMOtcUDJB39ksvj1X2TRv41Qy2ztD1lKzWJWlJ52MI
 HBxQElrcVFQzgYj+VSqr8S1jGne7W5gD1octFL1s+9dvyOTtO5g61EeplFKUGWZEIrWO
 cHYLxLf7mTbiqULLlMT/3o46+hgZqB03iGVNEGT97rQjzHNiRvhSxyq11P2k3QJxXAp9
 6/ig==
X-Gm-Message-State: APjAAAXa6HYIyInDiLDxtcGl2waattn20UcqKjy8oJCa43D10TSsPC3h
 M75yFQgJwU/G2h7X002ippEm8A==
X-Google-Smtp-Source: APXvYqy35JtQGn/o2sYmnTw5QhjYpaa9VBR0OFEzY+gO/nvyxgJ/G3AD8qQsSp3sxITYQP5gSQPHWw==
X-Received: by 2002:aa7:991a:: with SMTP id z26mr21487474pff.43.1566844008760; 
 Mon, 26 Aug 2019 11:26:48 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 19sm167655pjc.25.2019.08.26.11.26.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 11:26:48 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: make all fabrics command run on a separate
 request queue
To: Max Gurtovoy <maxg@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
References: <20190822233932.29003-1-sagi@grimberg.me>
 <573e9574-c0c0-9d2d-39f9-be9bdcf87032@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <25b832f0-6121-d801-fdee-a13381b6b7e4@broadcom.com>
Date: Mon, 26 Aug 2019 11:26:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <573e9574-c0c0-9d2d-39f9-be9bdcf87032@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112650_303813_7CD6119F 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/25/2019 3:02 AM, Max Gurtovoy wrote:
>
> On 8/23/2019 2:39 AM, Sagi Grimberg wrote:
>
> Sagi,
>
> I see that we have lot of common code between the transports here.
>
> Can we move it to 1 place instead of duplicating it ?
>
>
We can't really do this without seriously reworking the different 
transports. It's the structure around what you see as common that makes 
it difficult. There has been a long-standing desire to commonize, but: 
a) we've been letting things flush out to ensure we know where the 
commonality is and what it should look like; and b) there hasn't been a 
good time for destabilization.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
