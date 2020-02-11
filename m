Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA87159828
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 19:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y4KzsFS0XZkriD6KSVtcWLfeH53ivxox6cEUgK05EmU=; b=EsgtX0UoX1eJIsT5NBa/iRl7d
	vHZu4UO0PoczUcImFotpSI80zvhKcah8yXOr71iHQUrhOCvUSyJtJjwfI9taB+C87hNd7gbqRV2uF
	AwejgM6MFvMftS4gQlY26yJ4imqR0XCz8K5wtzDgFSsSGgJ+krOdMPsOzh50VIETanQVT77+Tf+Ok
	OUV5/oQHa/BMCyctgl3rV11H5fDyI7mKSMpDbi8ncjq5zz6+6G1SvUpDRs4e1IN9KAj9x63vyBJnK
	SYC1RsCMaaRioRQ/9/CCTeuwAzgg+DXHql1sIH7/EQ0remN2XHbJorrVQOnEPfj5CYhOkFTccdVP7
	6Dp88BkcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a8t-0006yX-Je; Tue, 11 Feb 2020 18:20:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZlZ-0006ZD-LW
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 17:56:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id s1so5835235pfh.10
 for <linux-nvme@lists.infradead.org>; Tue, 11 Feb 2020 09:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nxyR688pDq8caOzKNAVkWBmaTWa4mFR0rWSoTMGHAm4=;
 b=K0GPZfSU5RlWw8qhc1h3BDjvFEmi6pwXcsy8IuxR3yE9NS8F36a+M8SS8hffW1M1WY
 DhYD/VVFFk53oj5wqhnfVqU5NBTs7iuei4EWG9SsTBotdhaW+Kclw7GrNI3qKa36wN2y
 VW6KzWLX3XbyxUJ0xZHoMyO33nT+hWVot/+mSjBpBd6N+Nfe/EpaLa93aCXMNuUUBmf+
 Sc9xYmMSi3R3NcvQa0z3GykyoFLUyi9YP6B4doMRpTXG2EzYPB+NH8ADke2dbovsD2hP
 /ZRcEYei291SCKT/N36zB+25I+3pHjoVSem5Rq/XPyL1dFA0ijUPr+1vnZ0frGvPHjHu
 IYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nxyR688pDq8caOzKNAVkWBmaTWa4mFR0rWSoTMGHAm4=;
 b=GhCiBx2O8tN4Jy5cRPKPTZjzNJ83MKqrTyb4H9MJcdix+t56UHiHOEJemv6Rn6aZB5
 dEoSZdiqBSiuys2Cz6ldWYWc8Rlsl4SLbllHIYvRvPoWKuzsNrCwb/EEtXcAqK9TKx57
 /SleJXvbyC9KAjoC4DIh4y4abepE524LzA9BHmA8IOwXun25kqFduS2CY+gmc7u5Q1Py
 h/LLISx3GYDDRHy36cvWcZGxJh6xnBWneMn4VX3LiMyKdVQ5eIuk+7PSzXLPyFORV4lT
 P9wStJHRK1jBtTM8j/qkuhMh392td8zww4dn33XGEoSM3jrFVlUfj5GSBC5IF83HqCWo
 77vQ==
X-Gm-Message-State: APjAAAUfND5e9rPsM3iQ7ofFmNKqpdHE8gNuYPyF7afSWazOlOpwoLes
 62ml8ye29KaKkOPTum/cAO4=
X-Google-Smtp-Source: APXvYqzSEcqKd9c5RY+3BQhCFvIyDQkMKb1FZ6r2wPbfK8Ni/Lygs5/tyufQYycaPx8sC5+7gVSQuQ==
X-Received: by 2002:a63:6704:: with SMTP id b4mr4423447pgc.424.1581443768740; 
 Tue, 11 Feb 2020 09:56:08 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x11sm4974422pfn.53.2020.02.11.09.56.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 09:56:08 -0800 (PST)
Subject: Re: [PATCH 2/2] nvme-rdma/nvme-tcp: Move err_work to nvme_reset_wq
To: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
References: <20200206191342.10190-1-jsmart2021@gmail.com>
 <20200206191342.10190-3-jsmart2021@gmail.com> <20200210170442.GB19584@lst.de>
 <ec482da7-1794-eea1-555c-31c76e792e4d@mellanox.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <35b81d7a-3783-c81b-a45b-f22260671444@gmail.com>
Date: Tue, 11 Feb 2020 09:56:06 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <ec482da7-1794-eea1-555c-31c76e792e4d@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095609_749524_31B13897 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nigel Kirkland <nigel.kirkland@broadcom.com>, mark.wunderlich@intel.com,
 sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/11/2020 2:12 AM, Max Gurtovoy wrote:
> 
> On 2/10/2020 7:04 PM, Christoph Hellwig wrote:
>> On Thu, Feb 06, 2020 at 11:13:42AM -0800, James Smart wrote:
>>> With keep alive processing being moved to nvme_wq, it potentially 
>>> creates
>>> a conflicting position with err_work also processing on nvme_wq and 
>>> needing
>>> to flush/stop keep alives.
>>>
>>> To avoid issues, schedule err_work on nvme_reset_wq. It looks like 
>>> this is
>>> not only a good thing for keep alives, but also brings the transports in
>>> line with the RESETTING state and processing work relative to RESETTING
>>> on nvme_reset_wq.
>>>
>>> This change is made to both nvme-rdma and nvme-tcp which have like code.
>> Shouldn't we move both in one patch to create a regression in one
>> cycle while fixing the other one?
> 
> Yup, seems like these should be squashed.

note: see the v2 posted yesterday.

> 
> James,
> 
> did you run some testing for RDMA/tcp that will trigger this code ?

The testing of the keepalive movement was all in FC. FC already has it's 
calls from either nvme_reset_wq or nvme_delete_wq.

For RDMA/TCP - it was not tested. It was by code inspection and looking 
at who calls the keepalive cancellation calls.

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
