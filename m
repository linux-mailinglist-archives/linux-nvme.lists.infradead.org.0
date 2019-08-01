Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C267E292
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 20:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oSV3tzH+qOa1g2eBVG+r4n2xdARS5SEjA+jdw2lU5/8=; b=apPx+YHBqVuqToEpkjn0LHCPG
	5eOjqk17fQb+dJefGjcaJyn6eB+TDkOoxSmNNPdW9GQ6HhQnTC1UgoiXtLcLHNVXCPLRApgC5QoqO
	sl2SefLYvOb7N80IUlhbyOiFFsm0VIx2EAy+BRfq8cMglbyPwGvF2DRjTdE7nHY7pb8KpLj8qHXOo
	yreYdYBMYx6E0/dRqGVsvr31vhA+72UrYxL1vnCXtXmhunEK8LN5doZVXl1FJSrhNwLID4mojCEt9
	99GJY43PV66GNG2cb5ikHaywH+iGlK0lvDchykH+PrWo1fBZ7a1NLxbVpsf3Nx+BscJjsY9h/Sny1
	yVwzyZ0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htG6C-00025X-7O; Thu, 01 Aug 2019 18:46:48 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htG66-00024l-QK
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 18:46:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id j11so18089929otp.10
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 11:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hQh35YZAplZsA2HPYOxwR77brQhf5qLTZ6Zc3iOFCc0=;
 b=la9USS0AjAPITV/FhpLSCIVdGu9GHg40a06q0AbWAqdN0w6sK0ODz/E6bFBSXo906t
 I1yIvy/v03VzJzWtjnJtYxian8Aic6k2Kfsrq4mRMvy9j5VfzquYJYlbZbuy5gYw6OYy
 fTxkfMVmWlJoejTwL/SGLVilqeYLLkPGqzyePPjoOmpuHFt/eq/SKpDbTfMYZ9DIDk7n
 BKoFb+o1lqjbV7Q9DJiH8ea/U9wTrX4flzgji02vllZEMJeRsEWNm6GMyPeOx5/n8RU2
 oOYsWwuQ5t4kvPbi92Jy6cG6zPcnmMAkC0rtrkTuOL96cWyPEMWqRvL9zyvS+2jhtWal
 W+4w==
X-Gm-Message-State: APjAAAXI4J49cFX4km3CXwuP+HaMLp2p711cMCpSGbaHLE8SrgIZsiXT
 r66EHaeQxhMAkp6kWxAO52o=
X-Google-Smtp-Source: APXvYqxlQgTr8iP60hnfsMjQ2oQrsCU/A7ST6otubtT2f3/2MpqTffLQhq8KIsfRg/GeN6W0g7pROQ==
X-Received: by 2002:a05:6830:1ae4:: with SMTP id
 c4mr75647322otd.261.1564685197409; 
 Thu, 01 Aug 2019 11:46:37 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id w17sm23739268oia.24.2019.08.01.11.46.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 11:46:36 -0700 (PDT)
Subject: Re: [PATCH rfc 2/2] nvme: fix possible use-after-free condition when
 controller reset is racing namespace scanning
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-3-sagi@grimberg.me>
 <e3b0f11f-a66f-9b1a-6790-89efcaa33140@suse.de>
 <fb6c9d38-32f6-a659-f3b9-1c57f28b410d@grimberg.me>
 <b6b929e7-3da5-f274-f7c8-4e98f8585917@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <97583db4-8ff5-9d13-bbc8-d133bbc3f28d@grimberg.me>
Date: Thu, 1 Aug 2019 11:46:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b6b929e7-3da5-f274-f7c8-4e98f8585917@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_114642_858938_480CB06B 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> nvme_stop/start_queue are quiescing the queue, not freezing it which
>> does not block requests in blk_queue_enter.
>> So I don't think that blk_cleanup_queue will hang for unquiesced queues.
> 
> My worry here is for quiesced queues; they are not unquiesced when
> blk_clean_queue() is running. So I'm not sure if we're able to flush all
> commands then.

blk_cleanup_queue does not block on quiesced queues, it blocks on frozen
queues.

> But be it as it may, I've sent a patchset for checking the NS_REMOVING
> flag when traversing the namespace list. That should take care of this
> issue, and should render this patch obsolete.

I've shared feedback on that one, I need to understand what is the
crash that you are talking about.. and why not promoting the list
removal in nvme_ns_remove() doesn't address it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
