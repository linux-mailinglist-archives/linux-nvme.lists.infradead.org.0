Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3589A17412C
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 21:40:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=Xfbmm9q+xGRHT8M2BzTc6Le7e
	fq7p7vZwDPlOrOQCwE3ePRSU1Lan3r+iNBRiQ17+gJmpo6sBqIOChb++CNnkRdjGee9lV1wdkhIdz
	ZGadoU9TbjlcfQ9CGQOjyTOm4OAsU2dgZKCBuw4hizk/XZtNyw6j71szWMlqFTyqF/2MERdO6/VtR
	f6JK8Xr2ZvShAoGcwZX0lTL9gkQ8jK+gSgwCnxHNW4anShiLORvog6CmcIh3dTngkc47VDBbcxxKw
	jI1sM7A+ih2iurLVfwpPn21DYiQ+UJmBAF/OoMtA6H6ScZqW+wG1UqR0ktLzNxtdBfId8ooGhCrT0
	OK1tzsElA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mRA-0004so-Ko; Fri, 28 Feb 2020 20:40:44 +0000
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mR6-0004sX-94
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 20:40:41 +0000
Received: by mail-pg1-f181.google.com with SMTP id t3so2104299pgn.1
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 12:40:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=F0zxJAPlgI7I0nuOD1djwCQPPv1gwNogUNQviLNynurFAgBlhtUL5KeShGWq3821Gp
 NHgYvzbHNgTQBF4bqPmNoL2KTDWk+jaa+aXCPHgWnGLx5KnHvHAo2v79I1Q4plaw+2FQ
 0KauVLRGvpsYYoRclnWbqxNtg77mJb6N1/PM3YceRC7kMNyH+m2Ty+zAXpzCItoDL3gy
 nfazJ/VK9fY9tzXX+SeC9h7E4ijT4YSHBg1XuQKlx2itgILbXsihBwkX2t1nQ4Q/PISG
 AOHY+XzeAemFsRVZ1UE6tYgGJYS+21RSmpObR9FxGc4Q9yr+2fXDLPXTwdeRTNvvbIhx
 6q8w==
X-Gm-Message-State: APjAAAUiCJIrz1ojLBiVT40G+lXgccKtl7pYCUaVhEFHxhKaClmLhPMu
 4ZR36K0QZD23VSKvZmSJGaadaIM/
X-Google-Smtp-Source: APXvYqzioXvk3p0V2XpjOQSwS8Ur9mZugPYRIfuYGLB2KF2QRPvNor3KmnHWH6CmbACA9N5rFbhLMQ==
X-Received: by 2002:a63:745c:: with SMTP id e28mr6153380pgn.231.1582922439441; 
 Fri, 28 Feb 2020 12:40:39 -0800 (PST)
Received: from ?IPv6:2601:647:4802:9070:d1b8:1f12:d98f:3f23?
 ([2601:647:4802:9070:d1b8:1f12:d98f:3f23])
 by smtp.gmail.com with ESMTPSA id b133sm11262211pga.43.2020.02.28.12.40.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 12:40:38 -0800 (PST)
Subject: Re: [PATCH 05/29] lpfc: adapt code to changed names in api header
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-6-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3e7f0fb4-00ea-5fc6-7317-e1b1b39b423a@grimberg.me>
Date: Fri, 28 Feb 2020 12:40:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_124040_315827_AC39D3CC 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.181 listed in wl.mailspike.net]
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
