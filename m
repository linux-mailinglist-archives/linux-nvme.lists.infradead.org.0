Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FA41916E4
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 17:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8JIa7SwVbI4vFlHPI869nS/ocGmZOK4kZc/C90/GYiE=; b=VjFMPxLguoQvrEF/FjmVEx+87
	RTTRKX3ijkzqKYXSJJbxWUf3GHc+uPxz1GyZ4Uf/GyFt/u+VIAGioPcIoei5D2II4a4e1bF44QpEp
	tN061CxnQ694i9ULBjhAUkYmo4wEBYNtA18tOfqT8Hv06gnRL93sALTTVtvCs/BLciv+t7OxpfdUs
	cw19lUhTFYHPvq+4qzlKnyTYujAFlr9MQdVbFFfzwuD5ajljyhhN2Q8E7j41seY7uqI+iPqVg5vCe
	1GOs8abU5arBq5G405bdQV+6mrCXwcVzK7I1IYYUzJrPrTzPy7mXZji8P5NYKz3DHGfWjN25Znf6n
	ZFDFuZ+2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmm5-0008Nu-8F; Tue, 24 Mar 2020 16:51:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmm0-0008NP-Pv
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 16:51:30 +0000
Received: by mail-pj1-x1043.google.com with SMTP id kx8so1707657pjb.5
 for <linux-nvme@lists.infradead.org>; Tue, 24 Mar 2020 09:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=hpNBEA5Ss5EiH/7nWCn4791OQ+bRfXtk241A28CxB38=;
 b=C3mvgmp6onD93YzirKUR6rAQJKLbihfc4LW59rZuk8P22ldjO+6nUB1iyw91rLG038
 7A01+u0EmfuNCBmrzOjPe+xa3FJg14VoRESzy605+Ne+f93jPBVrbTdm2FfD4vnd0Frf
 q8JEPtfSCkfKLjpmGuftVF7NpIZfkQSE+MaTBD2RMlo4Ud0UY0/kSxkXmoWGUXRgKjeE
 FG8+L/YmCkm5Pv5tbJrNS9s+iK4g03dquN+dMBtWSFzdzJDHDkDsaMCbbioJA373CzJF
 6VFzWGdjrzZrWiowNSPwT6iThh7Mbu6nZ68Hx4o3/PawdJcYPxymHXNvocy+3k5lQIu0
 pjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=hpNBEA5Ss5EiH/7nWCn4791OQ+bRfXtk241A28CxB38=;
 b=cRLFh3TUoIXejBYOJb8CoWD8bbNltgua8+T0OyOLESHxsWdrFLMopsU7CzPfvzKAm0
 8/VbZ8iwU+/UaqntRZxCP13XFHuQ+gu82+XFxXcnq5RAXBoveiqQ0OFbn+mqpieb8yft
 wOH+MBNOL+HTS4ZAKQyc9SoEU+sQBj4r45K+6iQRMlb8w3ckWyaxJIpTODSFlZwsvL/R
 jcamuf7PoN0oTMxQwpf8mEnfX70LgifzI9RbTQOOSB18rHIzOD1cNO5SZvKBN3MEYJVG
 nlO+ZpSOEXxr8qvuN09dFWQjQ9ygAqE/ju6XvDPGKQvBXVwiGfWw2lh65qP+AQJ7ug5q
 9pqg==
X-Gm-Message-State: ANhLgQ3iotuMQ1u50cRzx0F3CbyW2v4l1qpbn04P9bkUa/6eKvhgd9I+
 ULaEqO0ZJI0omp5bPOSBRTbY9FS4
X-Google-Smtp-Source: ADFU+vts5r0e6B2HJowp9EKGkXmm0jmQzBBRpAhlkCo5C5JxxPGHyK/s/7DCHGuINI5+oSryJxNseQ==
X-Received: by 2002:a17:902:868d:: with SMTP id
 g13mr26479470plo.317.1585068687379; 
 Tue, 24 Mar 2020 09:51:27 -0700 (PDT)
Received: from ?IPv6:240b:10:2720:5510:a182:288:3ffa:432a?
 ([240b:10:2720:5510:a182:288:3ffa:432a])
 by smtp.gmail.com with ESMTPSA id m11sm2739481pjl.18.2020.03.24.09.51.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 09:51:26 -0700 (PDT)
Subject: Re: [PATCH] block, nvme: Increase max segments parameter setting value
To: Keith Busch <kbusch@kernel.org>
References: <20200323182324.3243-1-ikegami.t@gmail.com>
 <BYAPR04MB4965BAF4C0300E1206B049A586F00@BYAPR04MB4965.namprd04.prod.outlook.com>
 <cff52955-e55c-068a-44a6-8ed4edc0696f@gmail.com>
 <20200324000237.GB15091@redsun51.ssa.fujisawa.hgst.com>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <6b73db44-ca3f-4285-0c91-dc1b1a5ca9f1@gmail.com>
Date: Wed, 25 Mar 2020 01:51:23 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200324000237.GB15091@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_095128_867747_837B1F1C 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ikegami.t[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2020/03/24 9:02, Keith Busch wrote:
> On Tue, Mar 24, 2020 at 08:09:19AM +0900, Tokunori Ikegami wrote:
>> Hi,
>>> The change looks okay, but why do we need such a large data length ?
>>>
>>> Do you have a use-case or performance numbers ?
>> We use the large data length to get log page by the NVMe admin command.
>> In the past it was able to get with the same length but failed currently
>> with it.
>>
>> So it seems that depended on the kernel version as caused by the version up.
> We didn't have 32-bit max segments before, though. Why was 16-bits
> enough in older kernels? Which kernel did this stop working?
Now I am asking the detail information to the reporter so let me update 
later.
That was able to use the same command script with the large data length 
in the past.
>
>> Also I have confirmed that currently failed with the length 0x10000000
>> 256MB.
> If your hitting max segment limits before any other limit, you should be
> able to do larger transfers with more physically contiguous memory. Huge
> pages can get the same data length in fewer segments, if you want to
> try that.
>
> But wouldn't it be better if your application splits the transfer into
> smaller chunks across multiple commands? NVMe log page command supports
> offsets for this reason.

Yes actually now we are using the offset parameter to split the data to get.
For a future usage it seems that it is better to use the large number 
size also.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
