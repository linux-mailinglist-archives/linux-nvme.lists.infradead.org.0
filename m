Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28BA55834
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 21:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hYAVCuEv+yLg6J2qVR6WowcipJb463CXsaxt+LB6PcY=; b=XixqnLdShaxyAbrkjikq4TIsj
	hw0LYulYDYWLtQbEX+jjLMlZsSIFC60TOV5neT5HjWZ0efnlfVtbolDcB26VBIxdTfj1zGXkl8WfZ
	eF+1xosAtTU13VOOGorF0pBWA7QbXfEaark/Q5PMdAXHq9EgpnF+8g+3V0FXJgXy9+x0JG5ULhpjL
	BJpFu0NjEX4sLVFIBYMMfRPG8+hwbNsbwZHPMeD6GcZbtPmYoXrpxY9opOSm9GH6ptaSHil24x09Z
	ILPPZYI+zp/I8+U70n4n9/jUYToHK6UMun14i27paJu3TAY6cyZCdrnNbeJQaP/H5d/PvL4D7RWr8
	zjRTfj6XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrXa-0005oB-Hd; Tue, 25 Jun 2019 19:55:42 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrXQ-0005nQ-Eb
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 19:55:33 +0000
Received: by mail-pg1-x52e.google.com with SMTP id v9so9443094pgr.13
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 12:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=UTjCwN+P07vstEYRS+TAzWaY8Y1pgWNsvvrOcGmf/i4=;
 b=ZgLmuYQ3HPVZmmT3/VDlYyoF7Ib5QAC+tM2NX/ZNiq9oTTjqII9suybVWMNm7Gi7pa
 YQwJa3wmzp4wDp5TUAs0RaNdS2lHsPvFzNNDf1XnRr2MM231zKwlGnMGB1e7hgVp6NUl
 IeaxdJN468OUAnUhpBlPcunIEDrX7R0uUf5zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UTjCwN+P07vstEYRS+TAzWaY8Y1pgWNsvvrOcGmf/i4=;
 b=nwBUWSt3dQXtZk/iMcYOi/gvIAlfM9rj6+5JYJIS3ATJOLyy/o6f0imecbAE7nfjcW
 +We5lDtkRR9kFRpUWF8Qnr6nsWGmCgklVPuij+yMW7GPGENbvZgM/g7XHr+sYtriX9DE
 x/mVDQn+Up9ZYCpwCkgYSc5cDPyoWYCS4fyOyfochQIvcjxdxKAKB6Qn6zS3F/kx+Fsg
 bnwb+ssyxJtNJaeaPf6FDKpdp2hiHakz6cb5VwvE6K89T5dn+Dv2M2GSBv9oLlCVPfdE
 xuNJw4UeWJDDWa7fVQxfTBjjlRsQsJyLMxACABn5Y5/EsP9Ve/AFrsn4/oUxGtzQtvef
 TNhg==
X-Gm-Message-State: APjAAAUYEVQBleiLPXrympzSTzY/6w+0H6xlNkopi9lV3FaH88N7AB17
 TtdOYkCqvx1v5BN2sHH19Li3jw==
X-Google-Smtp-Source: APXvYqwOAzmuALgwTHc10bRbHGzL/w9S6twL/D8ClWCfCdpVcykd0937TzvjyBv8WO2WUsJoVNBNbg==
X-Received: by 2002:a63:4103:: with SMTP id o3mr34704151pga.385.1561492528733; 
 Tue, 25 Jun 2019 12:55:28 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e6sm17006758pfn.71.2019.06.25.12.55.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 12:55:28 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: clean up error messages
To: "Ewan D. Milne" <emilne@redhat.com>, linux-nvme@lists.infradead.org
References: <20190624221240.25268-1-emilne@redhat.com>
 <14240398-683c-1d1c-f6e8-8fa8692270c2@broadcom.com>
 <c1d4377628740d182e16313b444b28ea6a2b8c1d.camel@redhat.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <4787a63a-186f-124b-ea7a-f3eaf13136f3@broadcom.com>
Date: Tue, 25 Jun 2019 12:55:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c1d4377628740d182e16313b444b28ea6a2b8c1d.camel@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_125532_498655_18F0DD3B 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: minwoo.im.dev@gmail.com, sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/25/2019 12:05 PM, Ewan D. Milne wrote:
> commit 5e77d61cbc7e766778037127dab69e6410a8fc48
> Author: Sagi Grimberg<sagi@grimberg.me>
> Date:   Tue Jun 19 15:34:13 2018 +0300
>
>      nvme-rdma: don't override opts->queue_size
>
> So should FC be using the same logic?

not sure - I'll have to look why Sagi reverted it.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
