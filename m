Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD3670CD6
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 00:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sJXpQjNTB8lJJhNB5f8APkCe/VOMkMMf2W14EvgHcwA=; b=roXIpKggRhpaOEG1fECk5SXpA
	qnSQyjsTDWvQ0dWj4OgZg3TfuJagxI5f/P2iMfxYNTeZS7cZ/qSpQAuyCoBtIFWF00j5lhixGadpC
	6/Oou6xXIxmUr/9gY0xC2rXssQnazszSxh90oGNp9urYoXXelGmcbtglJrUTaQTIO5iaErNPVRIWc
	Bk6UVLO9W99wuekfeSBWzvxA1CgpjrM3VQ+//so/jhknpJGt0lw11v4hjqf/K62ma5/HB5AtIlfJP
	3cdPMtfVkxEAQt/d784sArBMo+LgMEof6JxQfABOZ3dBY91kvjBdTQ8J8tmFx3N/wIkoeovwsV6OX
	fAoxqELLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hph2E-0000Gs-Rv; Mon, 22 Jul 2019 22:43:58 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hph23-0000GM-EI
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 22:43:48 +0000
Received: by mail-ot1-f65.google.com with SMTP id o101so42007330ota.8
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 15:43:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ykvbeBHNL2cK+/o5noRZkBi4y8aeINgthyJNnEhc9hk=;
 b=re+E4HbDpcibbYDZYOAgf32j5ZUoecM319ERcVCDZqqM8LQ4hZ4StyL9TB4Jcm9XPp
 eso+2Rn4R24PHwpDPolGaClDNCCnQbPGylt9yalc8bKYJZsuVNYCZplFA8rmUcBIcM1P
 gk5ahz/hOLZ3xa5aZDR0xB2fTaHvXUVAFAOYYZx2XrwLb7+ilFDp6y6aSldj5JkaRmC9
 IcaUk0i70pLeU5x2QM+KPNSuAHEhoxe2KKgnNLTYAtkQ9RjzMwQQ4/j4Pi/ZPx/7SR5K
 RpVUZklG+VSvvvvkJxu3LPKPhFcZcr8uuZicHFxnX1RVS06goO+E0RZkR3GhgGBcL3uC
 5R6g==
X-Gm-Message-State: APjAAAVDWd8iJalOP3zNVFLLa3mDwgIE2VvysIkuSt/6iArMnmVOB6Wt
 vuAqcTHBuKgux9zL1NYjAO1ZEowv
X-Google-Smtp-Source: APXvYqyQlQV1nll7vj7gGYwlyLKEXairf8JhSLzj1ZuSA4f1QwsXYjuOiKASZWVn2j6JYp3f5PTtzw==
X-Received: by 2002:a9d:3d8a:: with SMTP id l10mr51533469otc.343.1563835425821; 
 Mon, 22 Jul 2019 15:43:45 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w22sm13391821otp.73.2019.07.22.15.43.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 15:43:45 -0700 (PDT)
Subject: Re: [PATCH v2 00/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <226c6913-cda8-e692-4dfb-a6714592ed53@grimberg.me>
Date: Mon, 22 Jul 2019 15:43:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_154347_487907_7F3BE893 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> This is a formal posting of the patches, not an RFC.

I think we are good to go here.

Keith,
We will probably pick up the kernel component as soon as
we create nvme-5.4 tree. I think its safe to get these in
as is to nvme-cli. It's transparent to the existing usage
and will not be triggered without the kernel firing uevents.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
