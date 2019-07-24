Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E6D7366D
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 20:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M2tj87YhS7VadRL1LOzbdidm31LvccI2eqaQwvoq5wU=; b=DfA/ceDI+/b9x0QE8x1qBO1l4
	3XlRFY3uVl/9qTe5nyWcyAwG1msnEJPFqZRo6k24yKmxXy5aOHt/WUlzL5iyIbBP0d6fScv7qzGHA
	hi6kNOpWP8N57P0ao+ajXXz+FAAWar2kVWWhYH2vfMrzGgxhJsrZTLr5LjSW2VSL+SLNQWPDC7byO
	l/eP5cHovRvZ/xEvcJp45WR7UOvRIiRvpgKquB4xmtLNubjHXW04vGlD4H2RFJKvDXh9aSeeUTEgl
	Y3dVx1KEC0m/iQz+VvUa7Cgap7G7xDvBmg9I3L1CGvDJd7XA5XmSvCeCEn9kIuKtN8mIkGjyKUgAp
	Ppus732yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLow-0002Z2-RK; Wed, 24 Jul 2019 18:16:58 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLok-0002YQ-5d
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 18:16:47 +0000
Received: by mail-pl1-f194.google.com with SMTP id t14so22285822plr.11
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 11:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=meuEabKfl15LE6ZhubgEiC1uKO7ePMCZQ9CAFep1vIg=;
 b=A9Z+mMHTbgReMtzRNfk/MbfCDKsA9hjehUi4DKws0ziCS1SXb8+rPFCHheOF0RMuKA
 ew6t2ib2h2R3PhVeKBuAwNmhTpgRCZKkqQtUEVUN6Tq+FlLx1UFFMtMYrUDalb2ZsMLP
 QObgGDZGSdZmZp2u6345Kh/qscnWmwE1zxpKlUyJJs27QY/9NOVRY+FrMImoihK7a8gN
 40CfanCi/PZC8bA80R1itv1odiekHzPDoKFy9CgF4WA4oZBWFIPKPiknLvIqKDP1vPK1
 y1WkSlH8wuhwI7xn4D+49hd/vhlmmdw8+vk6sd5jRNI///3VXD8Qt0aflfF0ZxhUVDiF
 qhFQ==
X-Gm-Message-State: APjAAAV/YNjYTwGVeP9CoMg9hhJ0bIlISQ618EjS5H+qm9PqNwAzNRB5
 OkWEaZgrw78VF7+99sCEB68=
X-Google-Smtp-Source: APXvYqzRxGslPP5EdCreHZJOY4OHDSFv2o05O8YOrK0F1PZIMn2tr/M6sULSBD8ClKTQvga4GwFECQ==
X-Received: by 2002:a17:902:b48f:: with SMTP id
 y15mr88581303plr.268.1563992204994; 
 Wed, 24 Jul 2019 11:16:44 -0700 (PDT)
Received: from [10.8.0.6] (162-195-240-247.lightspeed.sntcca.sbcglobal.net.
 [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id v138sm54319237pfc.15.2019.07.24.11.16.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 11:16:44 -0700 (PDT)
Subject: Re: [PATCH] nvme-tcp: Use protocol specific operations while reading
 socket
To: Christoph Hellwig <hch@lst.de>, Potnuri Bharat Teja <bharat@chelsio.com>
References: <20190708095200.15921-1-bharat@chelsio.com>
 <20190724062836.GA25058@chelsio.com> <20190724063324.GA1999@lst.de>
 <20190724065858.GA25528@chelsio.com> <20190724070107.GA2450@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2f7c6f5c-efb1-a16c-1d10-b253dbb5da0a@grimberg.me>
Date: Wed, 24 Jul 2019 11:16:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724070107.GA2450@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_111646_206915_596E2D15 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> Hi Sagi/Christoph,
>>>> Can this be queued for rc?
>>>
>>> How is this a -rc candidate?  I was planning on queuing it up for 5.4444.
>> I believe its a trivial one, so was hoping it could get into immediate rc(rc-2).
>> If you think otherwise I am fine with 5.4 also.
> 
> It does look trivial, but that isn't really the criteria for rc time
> inclusion, the prime criteria is if is an important bug fix.

Yea, this is 5.4 for sure...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
