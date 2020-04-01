Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81C319B715
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 22:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=bXkHT/6xKwKSP64JEb6xFokez
	2eTOBpaaIGYRfvNZEcwxWI0CHI3xyeXmnjYKoaD42/3/BVIAPqY7hRllxJpUxesfnJapcaq0LT4qx
	k8/OQd8lYbgsroUemexnmu5BtlF6c+j8Li+6UzDD4vni0CHuIpmV50JSWfbdjK2HzwnHKw9okBC52
	ufWh7uGrEChdB8S/ZuoQLaDbMTzaedfRp0ExmU7Qyjw145J86zwn6vsvvvrwD1hXrbCauD5vJx+88
	DQj0iJFuFIT6sRy0RuK05RVFI4RzZxY9xSiRv0/oenBmUxJl8wcJZvLWF3ErreB21q3vq/bKevG+d
	xi1HYUahg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJk50-0002cl-S3; Wed, 01 Apr 2020 20:35:18 +0000
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJk4w-0002c3-BO
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 20:35:15 +0000
Received: by mail-pg1-f177.google.com with SMTP id t24so703200pgj.7
 for <linux-nvme@lists.infradead.org>; Wed, 01 Apr 2020 13:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=lBXgIlvR6kgaZew4iIkDsEOSA8OGz0LblmQ6PRd1rC9pEbDDNx9msHxmgOUEDlGT0F
 WZeDE9a7to5L/ld59bCkn6dep8jC1BfrjvkXgPuhfsIhP4tDzyLo1igG2OfkDRtj6GDv
 3WTGsNpjPpmdqZR218SiepEQQqwXCCSGTZdIhqW7PUKF9K5lAMBoJeB5PTG2v9yP7KEf
 HTYfakoEztk1D5ZuPhEEuZL559ks25kF5+7Drs9f+xgTGIkhvVbsbs/bkD7I2Y0vQc5I
 9SDwUZzONAGt5q7yU0hUtu3mfFp2Tx2I6KbnCd/zULlJ91hlZEQJ8/goM2Qdi5htgIxq
 PeJQ==
X-Gm-Message-State: ANhLgQ09m1MEHKX46yeR0TkatisjVHlZXWtdXhPdg+qrKWKCHcRg3poI
 dbtNRvtFq5NuTIV1/j1AashYF6ce
X-Google-Smtp-Source: ADFU+vs3knuq5g0CdNYDBiacFn1MPeDItGiSqm8k8/3DL9iHZU7bD4RHXxysKUSeAoBJWBrxgXThuA==
X-Received: by 2002:a63:cf03:: with SMTP id j3mr24187992pgg.433.1585773313094; 
 Wed, 01 Apr 2020 13:35:13 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:a836:db4c:a7ac:3d7c?
 ([2601:647:4802:9070:a836:db4c:a7ac:3d7c])
 by smtp.gmail.com with ESMTPSA id s39sm2332629pjb.10.2020.04.01.13.35.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 13:35:12 -0700 (PDT)
Subject: Re: [PATCH] nvmetcli: Correct xrange usage for py3
To: Tony Asleson <tasleson@redhat.com>, linux-nvme@lists.infradead.org
References: <20200401191316.54355-1-tasleson@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3ddf95f2-5f4e-21b1-e8d1-fac8e7af195b@grimberg.me>
Date: Wed, 1 Apr 2020 13:35:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401191316.54355-1-tasleson@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_133514_388665_B08DE9E2 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.177 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
