Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6988824B0
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 20:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1vrGkr5Nu7yfMyPrOR7Nr8irU5DoakqqVCwYFgQZx08=; b=EyVq//3u9S/4Nf6WS2O6/ob+7
	GU6ZJvRMmNUZsQ6ifhZxrZqGvY/mfgSFABtguAfzlIcuDfYUpCYMTxyplGxMSLbzsAICJsFJloHfQ
	Pf+vdstjuUOFZQprurYi/0k4zBpat+Wj9XAhOFq9Rt/DO4fwrmpRqZqgMnJ2GaoxDao9AuAnSyfH3
	sOPmdGi1FfjWw6mh1wFbzfBG5Yjc0yVgst38oCJx/gYB/Cn5AAR8QGooJ4bnApdbWUr7FV9dd3KcC
	UeEkLdCuw5Tuv9IG6pe2BqCzHzpmTdk8jSZOLbqd1GhMivcm2BhZlAx861MXveyCm3wRs5h2K+6A7
	ICgr/qJQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhTG-0001bN-7w; Mon, 05 Aug 2019 18:12:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhT8-0001b4-3Q
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 18:12:27 +0000
Received: by mail-oi1-f196.google.com with SMTP id l12so2087162oil.1
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 11:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MuKze6mJ0bvDLb/dZGoeWy4Aa5toqY+IV+JuLs02z7s=;
 b=Zz8ogRXkWyo1RehfO4QoFzlukvyyvES0lsZSjBjweozJsRQj9Boa+5nAFG8BfJPAWB
 t8xA995NNgcTy9WJrjWcKAMmQM1Xm8y7xQeC7pzC9JHt/83BoyLXOaderI2eTxSOfrQj
 iIYkV9B5/0/fQ05f5enToQhTNZaaevWCdQn/8OmgHZgADt0sF67EkVuksLr1NsMoj1Kr
 5Y6qSAt1BbZukHXTZ0SnKRg9FFPSxP61xEN3VyYi5XYCaMlOuVRpNsCFlsGMkbntLndD
 uB1a5yDINJ2QJbBjsJ1tcqbf8LyjSnmYIsveYUOJG/EFFO4rHjbHP5cR34AxaI7wGQjC
 hIWw==
X-Gm-Message-State: APjAAAVoiZQ6qL/KoDL2Ac3Lui4oCyUW+O6dEfxg6S5LP4rlMeAeD3OP
 RDKzarA+Aym3fyMsV5W/XyA=
X-Google-Smtp-Source: APXvYqzfbSYP+5Gh36USCn9iPNS1wetAamKJ58xW5XirvhZqThcEomQpLO+fPKptWWWWt/LL3k+iig==
X-Received: by 2002:aca:ac42:: with SMTP id v63mr7892688oie.46.1565028745144; 
 Mon, 05 Aug 2019 11:12:25 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id k10sm28827293otl.21.2019.08.05.11.12.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:12:24 -0700 (PDT)
Subject: Re: [PATCH rfc v2 2/6] nvme: return nvme_error_status for sync
 commands failure
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-3-sagi@grimberg.me>
 <20190804075758.GB14486@minwoo-desktop>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a16aa5b3-262b-e895-e0f2-f28e01c39e4a@grimberg.me>
Date: Mon, 5 Aug 2019 11:12:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804075758.GB14486@minwoo-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_111226_141061_173A1DDE 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi Sagi,
> 
> On 19-08-02 19:49:51, Sagi Grimberg wrote:
>> callers should not rely on raw nvme status, blk_status_t
>> is more appropriate.
> 
> May I ask why caller should not rely on the nvme status?

Because the origin of these calls may not be nvme at all, so
a generic block status is definitely more appropriate.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
