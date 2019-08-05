Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD73824C7
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 20:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GX2AUnEer8K/GMzlK7x1NJHMV5Q1lX6uXZ2q0YKHfVY=; b=lyFGVJyrWgwhaqwgpDUWS4BCF
	oIz0kZnkj0wM4IodWF49bQgLtH2WRnVZUJBQs5JNDWgT5IysXRHC5RzHjWnmOwG6xIgOXbcV/7cez
	hS0KEl/mVBZiBeZuvDYuITM6hjviUBH5qd4SqDGd9AAdZLzWZpmbNLBpDqyVwQpYsYGYa1cWCu4bw
	yApxTUjz1Abv75pDY88H6iK3x2PWXjwP5LevHjg7jYKYxLn4lm6/QTu0vLHH5/ScDcgnqVKazeyN9
	0NIlQVvAk6Db4o8H8qoj7fE6x4Ya1gbPeXcXX9VFL/k4Ey4+Z58JjxoHLdtXq5p1Vlmif09+6NmQs
	HzDC1eO8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhZb-0003Ws-Sp; Mon, 05 Aug 2019 18:19:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhZT-0003WX-V2
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 18:19:01 +0000
Received: by mail-ot1-f67.google.com with SMTP id n5so86284540otk.1
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 11:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bj4TXDfxMS+SDQCGKCDSHV5+LmocIqG2FR3qW232Ke4=;
 b=R2+iHz8wWXDTRtsLEAtxjCgc5DltDg1JZjPRfYSAAK3u+rlcjFx8dzG6wMxHxgPCNq
 b/u9QVzJ4I7Tl6UouX0ExFoR9c4A6U0d4/jTZSgXOyLgJzz8YB5DIw2N330LnB0hKzsu
 ObbCjiuDBPLHOl8nLJ3MiV12acP2nm++2epHWJw+sdivL94nvKTalOL393wVxjtbL/VJ
 e7uU7PXKYx0jLfl9TV5Mi96kE0esjFgBSkp02seuovqTf0xMpNA4AVDaDw2zFRwgVOEY
 sqoADZbEJ5Aqq/p9BJ04oBzTSxoM8G93OuN960mRhW3sbMyfeDPyArOjYk3zcMHBpRYu
 Y2Kw==
X-Gm-Message-State: APjAAAXvbg7nlcyEMVaejf6j55vr+RkLQwl/RwOfrRcZnhtRUzQ7u3w2
 9xyR9C2OnTVwKeiVErcPdFU=
X-Google-Smtp-Source: APXvYqzi3UXuKsO42KWbYY+H4j8/VWCmngK5snTvNZhjoyvTLGvp8Mzz15XMKmS/b2Uwzfw/ZEccfQ==
X-Received: by 2002:a9d:6f09:: with SMTP id n9mr44234379otq.335.1565029139094; 
 Mon, 05 Aug 2019 11:18:59 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id o23sm26183136oie.20.2019.08.05.11.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:18:58 -0700 (PDT)
Subject: Re: [PATCH rfc v2 3/6] nvme: make nvme_identify_ns propagate errors
 back
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-4-sagi@grimberg.me>
 <05c77c73-6bf6-ecc8-ec6a-99f924ea6916@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <87055a67-3411-c31b-8fc8-7652d0fe4f5a@grimberg.me>
Date: Mon, 5 Aug 2019 11:18:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <05c77c73-6bf6-ecc8-ec6a-99f924ea6916@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_111859_999371_55206A69 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> I'd prefer using PTR_ERR() here; that would avoid the **id parameter.
> (I'm really biased against this calling model, returning an error _and_
> a structure.

I can do that, shouldn't be a problem.

> You can never be sure that both match, and you always get
> into weird error handling routines.)

Well, the semantics is clear. If the call succeeded, id was allocated
and if not, id wasn't allocated. Not sure how this is confusing or
weird.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
