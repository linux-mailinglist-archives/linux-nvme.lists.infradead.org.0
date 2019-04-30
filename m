Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13428F01C
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 07:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gWaxUyeFvKjR4tZU0K4wQO/UzLY0k7Ye4TEtoeTQp+s=; b=jNnQz1n8tTlg0b/NmQ+xnLXlp
	bsavcG5wlkr18KugBDBzCKxQXUXj6T1b1WNDuOVPQZrcfjlb9w8Arh53694z0mEHygvNIshA4iYps
	jw+DykKgDAisOQchgSokly0RV/8b/IzFFhzHLcTFg4dIZzuXvwmnBTsBMr35SaOmRo2708D4Y/HRz
	13L8zr2dAFSx9/u/4OjiiOhqzmzWnyKP5kBOXqRbDzdkhIBxqsA3o4UOB4mjI7ejnIhOo7av+N1lV
	bi90u9tjoHhXrhNuKSIMJRrane4nELxmXu/3tn/nm3c8vObOtX1sss7bVKiQmk/SjAUmiLTyd+B0c
	Q4eFdWKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLiz-000352-Us; Tue, 30 Apr 2019 05:54:41 +0000
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLiv-00034c-4h
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 05:54:38 +0000
Received: by mail-wr1-f41.google.com with SMTP id v16so17056055wrp.1
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 22:54:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qH1jaE8cqDlGPvk9cVXven/sFRqpLcxd9/Gdu2QZ5bs=;
 b=HlDPngWmcc2LBgTl7ihFkJhF8KY/0rsASnuCW8UbJlDB0qE02K8JapSc7Ncl58D2WY
 +337FuZpk8H51TEUo7O3nI/an48EDnmMhVnfI2CZUk5EWLH3mxTbju2cITsLphmEVzTK
 IDfw4CMxtSrBfvSgDsrn5o7CejmPZ+BUfxJPi5kj7rV4MSl8yvucJvGaNz+xdbWY1mSL
 hgrZUdnPxLIru0phftDW/LoKBu3IPnIw1XthqMnVQH0brOKBCgm718+ZwXpofuVia39E
 R0jqlJbXj9H/48hZDj1Ou4eM1+jYYOjAPhMAS07Vf6vlX6fKjIobBolFMJafeMfXZGOf
 N5qw==
X-Gm-Message-State: APjAAAXlPkRdC8dXE4ZtejHxDOkkCb7/TPva5u8NlewWiLMXAdiZ4B7H
 7dFXRX3NNOC55/V2xfHb8D8=
X-Google-Smtp-Source: APXvYqwS20a2/jvd9WKYTLWRli4+bd5c0OiZkndCJfjWPE4VyiiNiKBorqG7PJ483fc4QIpp/0c2iA==
X-Received: by 2002:adf:8068:: with SMTP id 95mr29958259wrk.174.1556603675171; 
 Mon, 29 Apr 2019 22:54:35 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:2546:74c6:68ba:516?
 ([2601:647:4800:973f:2546:74c6:68ba:516])
 by smtp.gmail.com with ESMTPSA id c20sm43469307wre.28.2019.04.29.22.54.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 22:54:34 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
 <493df3a7-6d25-9fd1-57ff-addbf37fcf22@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <785558d1-519d-78c1-0a1b-7517f771c1e2@grimberg.me>
Date: Mon, 29 Apr 2019 22:54:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <493df3a7-6d25-9fd1-57ff-addbf37fcf22@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_225437_184357_C6094389 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> I do like the idea, but not necessarily the naming.
> Can't we just call it 'default.conf' ?

It's not as self-explanatory, but I'm fine with default.conf...

> What about precedence?
> I would have expected that we should have
> 
> defargs.conf
> discovery.conf
> <cmdline>
> 
> Is that the case?

Effectively yes, but defargs does not allow transport,traddr,trsvcid,nqn
parameters (which don't make sense), and discovery.conf is designed to
hold exactly those. So in practice they should not overlap.

Also, we only go to discovery.conf if we did not get a transport+traddr
(which are mandatory). So its not exactly the order you mentioned, more
like:

defargs.conf
<cmdline>
if transport+traddr not given
discovery.conf

> And shouldn't we document that somewhere?
Where would be the place to update this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
