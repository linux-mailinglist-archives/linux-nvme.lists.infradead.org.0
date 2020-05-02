Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640E81C2602
	for <lists+linux-nvme@lfdr.de>; Sat,  2 May 2020 16:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QgsZBU3KWleqbM+QRghvhDndYdfinj5kQbpw6NTC+rw=; b=prQbYcPRuKZQyFM+KqgTEXGqi
	gAC1n8qBFArB84zHePRvM4tjHUfU9zZ9trXHNz+4T9xcs+0QYyrFU3Ryj4upRdde2pCcROlVQ1YEh
	o4IkHNW8Ib9Jlj6CThYju+xRtWixl8t5rQfG1YDFOhdlcLYzv0X8qsRNCxOR9sKsEvkgDKyEwccHD
	LoLKRGhOJsWzXaM7ph6f6RZQZcHhxjLq11/9bNiWNFu2RlaRKR8e/h2nXpNNGEk7b0V+tIHtg9e1e
	MYfzUemeaYgQlC4LNuOkhHCVRc4vAqTVuFONpjK0g92BYSga7vz0b9PSFfdpeJI27erDdxb3SOIgr
	zxQ/c+wTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUspn-00059W-4l; Sat, 02 May 2020 14:09:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUspi-000586-2N
 for linux-nvme@lists.infradead.org; Sat, 02 May 2020 14:09:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so4942189wrt.0
 for <linux-nvme@lists.infradead.org>; Sat, 02 May 2020 07:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=RPowggqVD6lSeTI3DXOh05ufRkCdI/Cfvcp5fxEy/TA=;
 b=RIMgFJQwc8bq0NI/klSL8aHURd9EZHxXcOsinM2jCp12kDiqDrjGcq4GhUyE+9KENo
 bc9XcSzwP3HC2ZhNZ7Aj7JRxJut86IrKKnO1SiWgf178fEEuxY+vN//OlvFyTDCmWpyT
 RYiX9MaILr1la8ly1mYxhmgo/VP6bmYs1RLJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RPowggqVD6lSeTI3DXOh05ufRkCdI/Cfvcp5fxEy/TA=;
 b=CnfsZufu+Q5Spzdc2re5c4frqdfJ4Tpe48FJ/Bjsn0qVDFclytevUw8w+uhkat7FQa
 O60MN2QsnzMTfo9ZBYdWRQAA42kReWi0BGnGlUotqFtngPUTHHJAfNUSP7yvWMA7sICd
 +xRQhr+xAq1Cq/jgYvS9qFsPKv8uWUqfGP+5mpc5HQAtrOkKIzKqTlacXkssmetTtQaj
 m3eS3pGWFBmTY7JmcGf2NqCiryU3lhKXROyGooYA3m8aF1mP5Kb8Iz2cJ+mk8qNW2BlR
 3GU2eod71UPAvMci5WFGYsZxTrJmpJY/TxAP0k1xAuowszajuOcjefHLZKVmetTolHcm
 n+3g==
X-Gm-Message-State: AGi0PuZig8134pTx58zcI/LBGlqg2UotyF7f9k1Z45BC0TLLuebHY6R6
 haVMzli0lm9XquHUD3DkiVjjOKD7Tr85qEa3lPC6h4YOuJyvEY8vi8oFGN/MsLF+mu1I9rGiH/j
 lU9kC7EBkHOv6mxOh3RUWKHFe1uEnPvMyrFl3/UeejGBwlvCrmwfZLNGi0eDy2Y3ohFn3RyxOLU
 QFCMm8RQ==
X-Google-Smtp-Source: APiQypI0JfpFKpORc3ok2j6lE842zzhFBpbDThsJt1iTgrUQAGztr9e0VNe5G9/pk59mPGotz79JeA==
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr10226380wrt.302.1588428571579; 
 Sat, 02 May 2020 07:09:31 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z11sm1213570wro.48.2020.05.02.07.09.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 May 2020 07:09:30 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: change default devloss_tmo to 30s
To: Christoph Hellwig <hch@infradead.org>, James Smart <jsmart2021@gmail.com>
References: <20200501214549.95949-1-jsmart2021@gmail.com>
 <20200502063853.GA28925@infradead.org>
From: James Smart <james.smart@broadcom.com>
Message-ID: <c780b426-02b9-4fa0-ed54-a5be54b56542@broadcom.com>
Date: Sat, 2 May 2020 07:09:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200502063853.GA28925@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_070934_123554_7891E4FF 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Himanshu Madhani <himanshu.madhani@oracle.com>,
 Arun Easi <aeasi@marvell.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/1/2020 11:38 PM, Christoph Hellwig wrote:
> On Fri, May 01, 2020 at 02:45:49PM -0700, James Smart wrote:
>> Transport default devloss_tmo is 60s. However, both lldd's use a
>> driver default devloss_tmo of 30s.  Rather having an inconsistency if
>> the transport value is used, set the transport default to 30s.
> Can we just have an interface that queries the LLDD instead of
> relying on the drivers and the transport having the same value?
>
>

we have that already - not queries, but rather transport can provide it. 
Guess I can hard-enforce the driver sets a value and eliminate the 
transport default.

- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
