Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927331A9AE
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 00:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l2H5cFsCWJc4E9OA4/qf49iFvdPpD+LGoFrlyk7WO3c=; b=fl8Vj3RnpN0B6R51E1xqlUqb7
	xpfDnHIk8qx3hm7qIdTu0ssl+NCWJ/PB7wmF5ISU/mpaMakasMWDDhMluk3jHgcMj99v3o4ygQfx5
	lvLcqnM4WG5R1iOBnkvBG4rJ+8K0Kj9JQu7kmFY1kTDP9Igs+gl/mbEZLcwmE86yOzExdb+Vu15y7
	Drug1K0ML+r+CHueR/EyC6epa3BoO7C8TRb5C7qDaZZb0J2/NH0U8LtX/auwHjHokuDw4sgeFGnhU
	vpF9VDvVqAU+5psgHGGcRe+GX3rCYLfWNgnsiIaJ9eMxxjP3SkKxaEzWE8M8Mhik20FQuC1/2wUVt
	dM7KqGN0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPaQX-0002bt-0W; Sat, 11 May 2019 22:25:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPaQQ-00025v-Rd
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 22:25:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so4511889plz.1
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 15:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qBcMxXttSZzKwi3aJ/xifaR0pvFKi8xrbCe0l7ptPhI=;
 b=Ii0wuePY+x73QTGG8Gu8Dd5sCvaj4O8USy28UJpBlTqm49PruqZ1999Z79VpnBDyCn
 VREKQrylb/uxMTHZNZK9WeARkjFGyZQslBP43kTPLEH6uBJ1ID8MYCUkiBKr9zanMj/D
 IDNEEGTcYcZF2V4EbI5w22vgkBTgApOLPHtVuZwr6UBPehJaUeYNjbhkJztTOOhmVk9q
 Xf/sSe/l5KWAjIXXF/Ay+F6u5dZQlMKZg87Frv2Zzb+4aSfoOe60ZIvdslatXWZBW/Rv
 15G8p7W/f2hUnBaZqkYGoDCjFudyxRQV37voOi61YfSXGuldruar6kAGWK2XuqQUggMi
 VwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qBcMxXttSZzKwi3aJ/xifaR0pvFKi8xrbCe0l7ptPhI=;
 b=M5TIhpsVXFnKw+0VXf/yuvZnkfEFhnGyPy0V/0ETrcjbb5TQ58DS65GHjGVn0xha7v
 Z2KSimV90MKFw07XQj+Kj8O1vRYpqh5lOjLy1YRgo6Wn0cE4ZQJLR3pMclPxUDx2FGt+
 onYJtWpYwMzHCYMb37RNcwQ0kwjm5zJ61YO0/UVTipf6v81jAGkux222XzzDPIRQmuZx
 ueshniavt3ap4C7CI1pQ7lqlgG1ShybMlnh5oVgcHAL0YPZPIfFyq8KHs4Hgu8tGR3JY
 h6Y8yxnowmYaO/CPyDjXG4GXM7rntYsBM+qwb73feOV5r5VsCEsNZrWZ9JnCsubYrCao
 meOw==
X-Gm-Message-State: APjAAAUADdiIkmKEJbPBJGUw6CQMenN3fB1C4TfT1rm3Du3byZdc3U9A
 WUPdCds+MIofU5jzFhqRnkHsr+QMpeA=
X-Google-Smtp-Source: APXvYqzSkuhZOcBocLRmM6ZnoE8Eu95Rf5XXtLyVhZGxsTbFiifPqf0p6w9uFfop56KLFM7poy0EBQ==
X-Received: by 2002:a17:902:2808:: with SMTP id
 e8mr22586527plb.317.1557613502318; 
 Sat, 11 May 2019 15:25:02 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id s19sm11388746pfe.74.2019.05.11.15.25.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 15:25:01 -0700 (PDT)
Subject: Re: [PATCH RFC 2/4] nvme-status: Introduce nvme status module to map
 errno
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
 <20190511193713.29516-3-minwoo.im.dev@gmail.com>
 <SN6PR04MB452726893B1EC5E52D347B3F860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <5bcca563-73c9-a588-d656-9b612aedad20@gmail.com>
Date: Sun, 12 May 2019 07:24:59 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB452726893B1EC5E52D347B3F860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_152502_950771_7CB92F64 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +	if (sct == NVME_SCT_GENERIC) {
>> +		switch (status) {
>> +		case NVME_SC_INVALID_OPCODE:
>> +		case NVME_SC_INVALID_FIELD:
>> +		case NVME_SC_INVALID_NS:
>> +		case NVME_SC_SGL_INVALID_LAST:
>> +		case NVME_SC_SGL_INVALID_COUNT:
>> +		case NVME_SC_SGL_INVALID_DATA:
>> +		case NVME_SC_SGL_INVALID_METADATA:
>> +		case NVME_SC_SGL_INVALID_TYPE:
>> +		case NVME_SC_SGL_INVALID_OFFSET:
>> +		case NVME_SC_SGL_INVALID_SUBTYPE:
>> +			return EINVAL;
>> +		case NVME_SC_CMDID_CONFLICT:
>> +			return EADDRINUSE;
>> +		case NVME_SC_DATA_XFER_ERROR:
>> +		case NVME_SC_INTERNAL:
>> +		case NVME_SC_SANITIZE_FAILED:
>> +			return EIO;
>> +		case NVME_SC_POWER_LOSS:
>> +		case NVME_SC_ABORT_REQ:
>> +		case NVME_SC_ABORT_QUEUE:
>> +		case NVME_SC_FUSED_FAIL:
>> +		case NVME_SC_FUSED_MISSING:
>> +			return EWOULDBLOCK;
>> +		case NVME_SC_CMD_SEQ_ERROR:
>> +			return EILSEQ;
>> +		case NVME_SC_SANITIZE_IN_PROGRESS:
>> +			return EINPROGRESS;
>> +		case NVME_SC_NS_WRITE_PROTECTED:
>> +		case NVME_SC_NS_NOT_READY:
>> +		case NVME_SC_RESERVATION_CONFLICT:
>> +			return EACCES;
>> +		case NVME_SC_LBA_RANGE:
>> +			return EREMOTEIO;
>> +		case NVME_SC_CAP_EXCEEDED:
>> +			return ENOSPC;
>> +		}
> 
> Please move above switch to the small helper inline function
> 
> nvme_status_code_generic().

I would like to have it indicating "errno" concept in the function name. 
  I'll make them like:
   nvme_generic_status_to_errno()
   nvme_cmd_specific_status_to_errno()
   nvme_fabrics_status_to_errno()

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
