Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333788F645
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KXr/r8y1/Kvk7KIDR2WGGC+QZ69PYEjFZ2gHse7d4eY=; b=ISX8RIBt1/PQzkK/saW0FIgv3
	d4x3mBEyahob5o8fiLp4fpSkF30hyFLdhNGso6xi2U5r6nabc+Q28Bd8OE9weGBIDpE5pZZNbzxBF
	K1nh+0ibVzucrSIFIR8XIHEKcmgsHXw5duN9tbnsSAemaqOL2M2iVjAMYD+z1cIVxfr73mjWKXyV4
	y8NK1dLMj9sYIUq2I/ignPaW9Xqc3Bl/qUMtaTHgWmQLtbXqMMh1fl6BhhPsQm8rGkJoFY9UhbbCr
	P+13dOrPmceTWgb5++jf4BHiJgCGi+vcXeoTiHCryI21k8S7sZO9F9DutcNMA9ooSjKB0aqkGphNN
	+CNF74haw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyN1R-0001os-RW; Thu, 15 Aug 2019 21:11:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyN1H-0001oT-Mx
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:10:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id v12so1929226pfn.10
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dZ2qcl2Y6p2wosP7AxwEHv7Wf87rlK+QJ8iHivGJr8Q=;
 b=Inx+Em+1Yu425+mlOuHMfTGE+jYxwN8NFAruFjXhnnbXSFmznNC3fkmGPv7tWUtuBe
 XTpIJ/91F+k4zzzW54jsHZ3hVZ+m8RiccSA5Dri7PQ1MIjKtE+PHKp63bPRqFuGeL6iC
 oklFJTaUZOu47QUd0ZhfEJojQ09f6kOBpbc6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dZ2qcl2Y6p2wosP7AxwEHv7Wf87rlK+QJ8iHivGJr8Q=;
 b=Pzgn3Txvw02h03Rtlcs/gjHkRTYRWfbdkRcO2enQql921Ri9lxllZq2k50mWayvNos
 HPPF/sTsDDVkO+w6k7rUSWQQgmjOcftsqjDQD+wYQ8yDgPZpPG4K4DDF6Tci0ILS9s0U
 BUlKviL2HCmRDXb3ep/r9NoISR3eVhtSu6NIW9RJY8wCyXooyqwCKoF7+XsqO+vg1XNB
 Lf9yKffLWybHj1uiBPB1SXC7BrxHk7ynoFTcP2Ox3noKOZbUzDZOcCpsQlg61c0qAjPn
 pwRAVlS7FPpFnuO2FkL9DrkI+JT7dKoNHfGc3A5q08bScoa5DNv0KwGhSUVXc/aOISjR
 CTMA==
X-Gm-Message-State: APjAAAV3+PXTr9g2LTwWsJP124M8IKOFS7PPpsiCFrZqBji3Pmrg+sM6
 02EGw5FD+swqmU6gDX6OIOXELg==
X-Google-Smtp-Source: APXvYqzUQuKWl2aYJ8t/xV26NUz4YPSvbRIHdniyq958DqWNyRxfukPNnv1/I0bX+DoNL6nvcnPyuw==
X-Received: by 2002:a63:de43:: with SMTP id y3mr5016167pgi.211.1565903450715; 
 Thu, 15 Aug 2019 14:10:50 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f12sm3090560pgo.85.2019.08.15.14.10.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:10:50 -0700 (PDT)
Subject: Re: [PATCH v6 3/7] nvme: make nvme_identify_ns propagate errors back
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-4-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <3b0b8d89-ed03-3e76-0203-0c45431e4b6b@broadcom.com>
Date: Thu, 15 Aug 2019 14:10:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-4-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_141051_754720_C284B53A 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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



On 8/12/2019 11:43 PM, Sagi Grimberg wrote:
> right now callers of nvme_identify_ns only know that it failed,
> but don't know why. Make nvme_identify_ns propagate the error back.
> Note that if the return status from nvme_submit_sync_cmd() is positive
> then we convert it from a blk_status_t to a negative errno.
>
> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>


Reviewed-by: James Smart <james.smart@broadcom.com>

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
