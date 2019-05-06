Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828E415133
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pwSt3LVaUS9cwcaup28kbwR7HGUD/u1q4vzCpRX2MvI=; b=TARw020rDwv33OQXMp4LouL3u
	RjtM0DRJ7xw8kGiCGtawvrNGrUC39E2CnPsGQk/VKd2qculAhjPpaib+JiUaIWebrtMw6zrDfWXHu
	bwOyjYPcxkvSHpTWq2G7I6wvSBAAvDC98ocm3yT52o2yizxB4ykfDsWNLYAogf7TBYYfYAbTS3o10
	Z9atL75E3rQdEVrDm6TmmNntUu5knudOf191+z6A7zNo6TVV57xUQTsJxqWQ8J2U9grVuf7VC92ve
	TTdoH9C82Lr0BvskJKZCsUMk2RV/GFrtcGq+MGZUiQvxma/Bnc/Y5xUd2naSj6V7NCQGsIRQb2EoA
	s8FkeUZIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgRg-0004BH-HQ; Mon, 06 May 2019 16:26:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgRG-000477-SE
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:26:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id d31so6703237pgl.7
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 09:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bxE/rIvtN5t5vV3LdY+ixYRI0GTzDE6f6fs0WCciRj4=;
 b=OwvkXsZOiyy+fKLsz3SJa4IfKB6lB65MLMKNwarfufImFEhtkU8sdp06JBHD0ftypa
 CaRl1hXpPlJEJSXyze955dis9GNnegYkJ7IvTZqYu/BSUygSUoIvZW2de/wFqL/g1S4E
 1fbQXXxUykGHbYFY2LUk0gxtTnyeXE/8Ssi6LWOIb3Nfg3M7Uk9PWdTdZ88pnOvhYGaF
 eBAMrlTn21PHgl+4pBCMreY6Ec8/xQeNj21umP9UE7OAP5yozkddekkAjHPwspUJD9c1
 DDFpfe3WVtl3CVXQ6tvxWmDMQLtVHY5GTQ1fAmFxD4+et45UM7gWyN9mbUSGCcPf4ukS
 N91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bxE/rIvtN5t5vV3LdY+ixYRI0GTzDE6f6fs0WCciRj4=;
 b=YiZsJZ05eOBdOlJn3UevsT6ablKXdgmdRy4S/RAF9Rm/OZ5Z5K7rxlT68ULJuLAzey
 3uAO4oEseLOfo7zjWn8lRsYh/yU2k4AMGSwux/M8K46dLwiq+2UjdEiVZWQ6HyT42oG7
 jNZz8ehqinKNLqZnnr6JHPfQ6K+0JNV6KPU441ExA+SGqpX30XNdXjhWjvuRXG75lp3S
 t3+xDuEjOAMgBzvISuebptdRM4kjhqoz6HPiLILHgbJ7yWCZEp4GplkvqZ69Wu0nbhfb
 1sEgiFqG/nCjWENIBv8TzhIVM4fuH+uKJSAMJahIV2cgz19WUL67XcVDmbXw82WjpmLx
 KJNg==
X-Gm-Message-State: APjAAAUoRLhI2w1zQb4pgU9ZcDDBKsXysT0uuqaHMnzDeg2yn+JIAD+w
 BY9WX5vQV4yh6U5qd74T+0SZZWHBzPY=
X-Google-Smtp-Source: APXvYqwFW0T63ch1huJv0FMMp/xqLCYW3KMeY72ILJtEe+1VS7dO5BwufLL1Dus6QYxNa2IbcSPtvQ==
X-Received: by 2002:a63:1b11:: with SMTP id b17mr33181082pgb.207.1557159962309; 
 Mon, 06 May 2019 09:26:02 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z66sm20521960pfz.83.2019.05.06.09.26.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:26:01 -0700 (PDT)
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
To: Keith Busch <kbusch@kernel.org>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
 <20190506145327.GA2164@localhost.localdomain>
 <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
 <20190506151727.GB2164@localhost.localdomain>
 <1ced3919-af4a-7899-8d49-026b9cc82e2b@gmail.com>
 <20190506155632.GA2219@localhost.localdomain>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <bcef79ca-8761-ed06-240b-15c235a7b7f4@gmail.com>
Date: Tue, 7 May 2019 01:25:58 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506155632.GA2219@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_092603_060051_76C15FDE 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 12:56 AM, Keith Busch wrote:
> On Tue, May 07, 2019 at 12:52:34AM +0900, Minwoo Im wrote:
>>
>> I think it's possible to happen in nvme-pci also.  When a CPU is handling a
>> request completed with nvme_complete_rq(), the controller reset by sysfs can
>> occur.  In this case, blk_mq_tagset_busy_iter() will iterate over the
>> requests allocated in nvme_dev_disable().
>>
>> Does nvme-pci host driver handle this kind of situation ?
> 
> Yes, we have barriers that ensure no other thread can be operating on
> a completion queue entry at the point we iterate the tagset.

Keith,

I should have looked at nvme-pci first much more deeply.  Thanks for 
teaching me this.  Now I might be going to prepare a V2 patch with the 
lock mechanism to avoid this situation.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
